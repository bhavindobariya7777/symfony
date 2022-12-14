<?php
namespace App\Command;
use Symfony\Component\Console\Command\Command;
use Symfony\Component\Console\Input\InputInterface;
use Symfony\Component\Console\Output\OutputInterface;
use Symfony\Component\Console\Input\InputArgument;
class CreateUserCommand extends Command
{
    // In this function set the name, description and help hint for the command
    protected function configure(): void
    {
        // Use in-build functions to set name, description and help
        $this->setName('my-custom-command')
            ->setDescription('This command runs your custom task')
            ->setHelp('Run this command to execute your custom tasks in the execute function.')
            ->addArgument('param', InputArgument::REQUIRED, 'Pass the parameter.');
    }
    // write the code you want to execute when command runs
    protected function execute(InputInterface $input, OutputInterface $output): int
    {
        // If you want to write some output
        $output->writeln('Pass the parameter' . $input->getArgument('param'));
        // Return below values according to the occurred situation
        if (1==1) {
            // if everything is executed successfully with no issues then return SUCCESS as below
            return Command::SUCCESS;
        } elseif (2==2) {
            // if execution fails return FAILURE as below
            return Command::FAILURE;
        } elseif (3==3) {
            // if invalid things happens i.e. invalid arguments etc. then return INVALID as below
            return Command::INVALID ;
        }
    }
}