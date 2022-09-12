# tutorial-manhuagui-downloader GUIDE
It's a example for teaching HTTP package、Crawler and Bash.

# HTTP
## Structure
1. Start Line
2. HTTP Headers
3. meta information
4. body

## 1. Start Line
`${method} ${uri} ${http_version}`

## * 2. HTTP Headers
The whole header including the value, consist of one single line, that will receive by the server then resolve it.
Example:
 - `User-Agent: ...`

# Crawler
Create a basic structure of request with cURL
`curl "https://www.google.com/search?q=curl" -H "User-Agent: My-User-Agnet"`

then create a special request for the target website.

# Bash based Crawler

follow as tutorial and the `downloader.sh`
