package com.peyman.youtubedownloader;

import io.github.luoshenshi.VideoInfo;
import io.github.luoshenshi.YTDL;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.ui.Model;

@SpringBootApplication
@RestController
public class YoutubeDownloaderApplication {

    public static void main(String[] args) {
        SpringApplication.run(YoutubeDownloaderApplication.class, args);

    }

    @GetMapping("/")
    public String videoPlayerPage(@RequestParam(value = "videoId", required = false, defaultValue = "dQw4w9WgXcQ") String videoId, Model model) {
        // Pass the initial video ID to the HTML page
        model.addAttribute("videoId", videoId);
        return "video-player";
    }

}
