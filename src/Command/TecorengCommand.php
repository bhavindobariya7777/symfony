<?php

namespace App\Command;

use Symfony\Component\Console\Attribute\AsCommand;
use Symfony\Component\Console\Command\Command;
use Symfony\Component\Console\Input\InputArgument;
use Symfony\Component\Console\Input\InputInterface;
use Symfony\Component\Console\Input\InputOption;
use Symfony\Component\Console\Output\OutputInterface;
use Symfony\Component\Console\Style\SymfonyStyle;
use Doctrine\Persistence\ManagerRegistry as PersistenceManagerRegistry;
use Goutte\Client;
use App\Entity\News;


#[AsCommand(
    name: 'tecoreng',
    description: 'Scrape websites and get data',
)]
class TecorengCommand extends Command
{
    public $doctrine;
    public function __construct(PersistenceManagerRegistry $doctrine)
    {
        $this->doctrine = $doctrine;
        parent::__construct();
    }

    protected function configure(): void
    {
        $this
            ->addArgument('arg1', InputArgument::OPTIONAL, 'Argument description')
            ->addOption('option1', null, InputOption::VALUE_NONE, 'Option description');
    }

    protected function execute(InputInterface $input, OutputInterface $output): int
    {

        //dd($this->doctrine);
        //COMMAND START


        //COMMAND CODE START ( echo "<pre>";print_r($a->text());exit();
        $tempTitle = [];
        $client = new Client();
        $crawler = $client->request('GET', 'https://highload.today/uk/');
        $a = $crawler->filter('.sidebar-center');
        $a->filter('.lenta-item')->each(function ($aN) use (&$tempTitle) {
            $titleNode = $aN->filter('a > h2');
            $i = 0;
            $image = "";
            $imageNode = $aN->filter('a')->each(function ($sd) use (&$i, &$image) {
                if ($i === 4) {
                    $image = $sd->filter('img')->attr('data-lazy-src');
                }
                $i = $i + 1;
            });

            $descNode = $aN->filter('p')->last();
            $obj = [
                "image" => $image,
                "title" => $titleNode->text(),
                "description" => $descNode->text()
            ];
            array_push($tempTitle, $obj);
        });
        $date = date('Y-m-d H:i:s');
        $emObj = $this->doctrine->getManager();

        foreach ($tempTitle as $key => $value) {
            $title = (isset($value['title']) && !empty($value['title'])) ? $value['title'] : '';
            $image = (isset($value['image']) && !empty($value['image'])) ? $value['image'] : '';
            $description = (isset($value['description']) && !empty($value['description'])) ? $value['description'] : '';

            $existNews = $this->doctrine->getRepository(News::class)->findOneBy(['title' => $title]);
            if ($existNews) {
                $queryUpdate = "UPDATE `news` SET `updated_at`='$date' WHERE id =" . $existNews->getId();
                $affectedUpdateRows = $emObj->getConnection()->executeUpdate($queryUpdate);
            } else {
                $query1 = "INSERT INTO news (title, description,image,created_at,updated_at) VALUES ('$title','$description','$image','$date','$date')";
                $affectedRows = $emObj->getConnection()->executeUpdate($query1);
            }
        }

        //COMMAND END
        $io = new SymfonyStyle($input, $output);
        $arg1 = $input->getArgument('arg1');

        if ($arg1) {
            $io->note(sprintf('You passed an argument: %s', $arg1));
        }

        if ($input->getOption('option1')) {
            // ...
        }

        $io->success('You have a new command! Now make it your own! Pass --help to see your options.');

        return Command::SUCCESS;
    }
}
