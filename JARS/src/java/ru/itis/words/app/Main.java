package ru.itis.words.app;

import ru.itis.words.app.ThreadPool;
import com.beust.jcommander.JCommander;

public class Main {

    public static void main(String[] argv) {

        Args args = new Args();

        JCommander.newBuilder()
            .addObject(args)
            .build()
            .parse(argv);

        // if (args.mode.equals("multi-thread")) {
        //     ThreadPool thread = new ThreadPool(args.count);
        // } else {
        //     ThreadPool thread = new ThreadPool(1);
        // }

        ThreadPool thread;

        if (args.mode.equals("multi-thread")) {
            thread = new ThreadPool(args.count);
        } else {
            thread = new ThreadPool(1);
        }

        String[] lonelyUrl = args.files.split(";");
        
        for (int i = 0; i < lonelyUrl.length; i++) {
            int finalI = i;
            Runnable task = () -> {
            ImageGetter im = new ImageGetter(lonelyUrl[finalI], args.folder);
            im.downloadImage();
            System.out.println(Thread.currentThread().getName() + " завершил загрузку!");
        };
            thread.submit(task);
        }

    }
  
}        

        

        // Runnable task1 = () -> {
        //     ImageGetter im1 = new ImageGetter("https://www.meme-arsenal.com/memes/bc3847731228057022e85e26065dd81d.jpg",
        //             args.folder);
        //     im1.downloadImage();
        //     System.out.println(Thread.currentThread().getName() + " завершил загрузку!");
        // };

        // Runnable task2 = () -> {
        //     ImageGetter im2 = new ImageGetter("https://www.komar.de/ru/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/s/h/sh061-vd4_forest_land_web.jpg",
        //             args.folder);
        //     im2.downloadImage();
        //     System.out.println(Thread.currentThread().getName() + " завершил загрузку!");
        // };

        // Runnable task3 = () -> {
        //     ImageGetter im3 = new ImageGetter("https://images.squarespace-cdn.com/content/v1/58784b046b8f5bb7978c128c/1493613167088-D5EKZ4U8K6KK3O9MI6HU/ke17ZwdGBToddI8pDm48kHrz9epLs3hdDAfGlWXhgI17gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z5QPOohDIaIeljMHgDF5CVlOqpeNLcJ80NK65_fV7S1UQxonoyeQsxogjZSvohlXW13-SQ-xRMtGaXkoBM8yGa26T7rG4wCiOgWBMcIofOR7g/image-asset.jpeg?format=1500w",
        //             args.folder);
        //     im3.downloadImage();
        //     System.out.println(Thread.currentThread().getName() + " завершил загрузку!");
        // };

        // thread.submit(task1);
        // thread.submit(task2);
        // thread.submit(task3);

//     }

// }
