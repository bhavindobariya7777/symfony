<?php

namespace App\Controller;

use App\Entity\News;
use App\Repository\NewsRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Doctrine\Persistence\ManagerRegistry as PersistenceManagerRegistry;
use Goutte\Client;



class NewsController extends AbstractController
{
    #[Route('/news/{page}', name: 'app_news')]
    public function index(NewsRepository $newsRepository, PersistenceManagerRegistry $doctrine, $page = 1): Response
    {
        // get the user repository
        $em = $doctrine->getManager();
        $developers = $em->getRepository(News::class);

        // build the query for the doctrine paginator
        $query = $developers->createQueryBuilder('n')->orderBy('n.id', 'DESC')->getQuery();
        $pageSize = '5';

        // load doctrine Paginator
        $paginator = new \Doctrine\ORM\Tools\Pagination\Paginator($query);

        // you can get total items
        $totalItems = count($paginator);

        // get total pages
        $pagesCount = ceil($totalItems / $pageSize);

        // now get one page's items:
        $paginator->getQuery()
            ->setFirstResult($pageSize * ($page - 1)) // set the offset
            ->setMaxResults($pageSize); // set the limit

        return $this->render('news/index.html.twig', [
            'newsList' => $paginator,
            'totalItems' => $totalItems,
            'pagesCount' => $pagesCount,
            'page' => $page

        ]);
    }
}
