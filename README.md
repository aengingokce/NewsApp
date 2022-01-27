## About The Project

This application provides you with current news by date and categories. The app sends you to the source website for the detail of the news.

### Built With
* [Swift](https://developer.apple.com/swift/)
* [XCode 13.2.1](https://developer.apple.com/xcode/)
* [MVVM](https://en.wikipedia.org/wiki/Model%E2%80%93view%E2%80%93viewmodel)
* [News API](https://newsapi.org/)

## Getting Started

You can directly launch the app in XCode.

### Installation

1. Get a free API Key at [News API](https://newsapi.org/)
2. Clone the repo
   ```sh
   git clone https://github.com/aengingokce/NewsApp
   ```
3. Enter your API in `/Utils/Extensions/URL+.swift`
   ```swift
   return URL(string: "https://newsapi.org/v2/top-headlines?category=\(category)&country=tr&apiKey=YOUR_API_KEY")!;
   ```

<p align="right">(<a href="#top">back to top</a>)</p>

### Requirements

* Xcode 13
* Swift 5

## Visual
| Demo |  
| --- | 
| --- | 

<p align="right">(<a href="#top">back to top</a>)</p>


## License

Distributed under the MIT License. See `LICENSE.txt` for more information.

<p align="right">(<a href="#top">back to top</a>)</p>
