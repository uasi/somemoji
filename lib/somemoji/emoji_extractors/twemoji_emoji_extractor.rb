module Somemoji
  module EmojiExtractors
    class TwemojiEmojiExtractor < DownloadableEmojiExtractor
      HOST = "raw.githubusercontent.com"

      # http://www.unicode.org/emoji/charts/emoji-variants.html
      CONVERSION_TABLE = {
        "1f004-fe0f" => "1f004",
        "1f170-fe0f" => "1f170",
        "1f171-fe0f" => "1f171",
        "1f17e-fe0f" => "1f17e",
        "1f17f-fe0f" => "1f17f",
        "1f202-fe0f" => "1f202",
        "1f21a-fe0f" => "1f21a",
        "1f22f-fe0f" => "1f22f",
        "1f237-fe0f" => "1f237",
        "1f321-fe0f" => "1f321",
        "1f324-fe0f" => "1f324",
        "1f325-fe0f" => "1f325",
        "1f326-fe0f" => "1f326",
        "1f327-fe0f" => "1f327",
        "1f328-fe0f" => "1f328",
        "1f329-fe0f" => "1f329",
        "1f32a-fe0f" => "1f32a",
        "1f32b-fe0f" => "1f32b",
        "1f32c-fe0f" => "1f32c",
        "1f336-fe0f" => "1f336",
        "1f37d-fe0f" => "1f37d",
        "1f396-fe0f" => "1f396",
        "1f397-fe0f" => "1f397",
        "1f399-fe0f" => "1f399",
        "1f39a-fe0f" => "1f39a",
        "1f39b-fe0f" => "1f39b",
        "1f39e-fe0f" => "1f39e",
        "1f39f-fe0f" => "1f39f",
        "1f3cb-fe0f" => "1f3cb",
        "1f3cc-fe0f" => "1f3cc",
        "1f3cd-fe0f" => "1f3cd",
        "1f3ce-fe0f" => "1f3ce",
        "1f3d4-fe0f" => "1f3d4",
        "1f3d5-fe0f" => "1f3d5",
        "1f3d6-fe0f" => "1f3d6",
        "1f3d7-fe0f" => "1f3d7",
        "1f3d8-fe0f" => "1f3d8",
        "1f3d9-fe0f" => "1f3d9",
        "1f3da-fe0f" => "1f3da",
        "1f3db-fe0f" => "1f3db",
        "1f3dc-fe0f" => "1f3dc",
        "1f3dd-fe0f" => "1f3dd",
        "1f3de-fe0f" => "1f3de",
        "1f3df-fe0f" => "1f3df",
        "1f3f3-fe0f" => "1f3f3",
        "1f3f5-fe0f" => "1f3f5",
        "1f3f7-fe0f" => "1f3f7",
        "1f43f-fe0f" => "1f43f",
        "1f441-fe0f" => "1f441",
        "1f4fd-fe0f" => "1f4fd",
        "1f549-fe0f" => "1f549",
        "1f54a-fe0f" => "1f54a",
        "1f56f-fe0f" => "1f56f",
        "1f570-fe0f" => "1f570",
        "1f573-fe0f" => "1f573",
        "1f574-fe0f" => "1f574",
        "1f575-fe0f" => "1f575",
        "1f576-fe0f" => "1f576",
        "1f577-fe0f" => "1f577",
        "1f578-fe0f" => "1f578",
        "1f579-fe0f" => "1f579",
        "1f587-fe0f" => "1f587",
        "1f58a-fe0f" => "1f58a",
        "1f58b-fe0f" => "1f58b",
        "1f58c-fe0f" => "1f58c",
        "1f58d-fe0f" => "1f58d",
        "1f590-fe0f" => "1f590",
        "1f5a5-fe0f" => "1f5a5",
        "1f5a8-fe0f" => "1f5a8",
        "1f5b1-fe0f" => "1f5b1",
        "1f5b2-fe0f" => "1f5b2",
        "1f5bc-fe0f" => "1f5bc",
        "1f5c2-fe0f" => "1f5c2",
        "1f5c3-fe0f" => "1f5c3",
        "1f5c4-fe0f" => "1f5c4",
        "1f5d1-fe0f" => "1f5d1",
        "1f5d2-fe0f" => "1f5d2",
        "1f5d3-fe0f" => "1f5d3",
        "1f5dc-fe0f" => "1f5dc",
        "1f5dd-fe0f" => "1f5dd",
        "1f5de-fe0f" => "1f5de",
        "1f5e1-fe0f" => "1f5e1",
        "1f5e3-fe0f" => "1f5e3",
        "1f5e8-fe0f" => "1f5e8",
        "1f5ef-fe0f" => "1f5ef",
        "1f5f3-fe0f" => "1f5f3",
        "1f5fa-fe0f" => "1f5fa",
        "1f6cb-fe0f" => "1f6cb",
        "1f6cd-fe0f" => "1f6cd",
        "1f6ce-fe0f" => "1f6ce",
        "1f6cf-fe0f" => "1f6cf",
        "1f6e0-fe0f" => "1f6e0",
        "1f6e1-fe0f" => "1f6e1",
        "1f6e2-fe0f" => "1f6e2",
        "1f6e3-fe0f" => "1f6e3",
        "1f6e4-fe0f" => "1f6e4",
        "1f6e5-fe0f" => "1f6e5",
        "1f6e9-fe0f" => "1f6e9",
        "1f6f0-fe0f" => "1f6f0",
        "1f6f3-fe0f" => "1f6f3",
        "203c-fe0f" => "203c",
        "2049-fe0f" => "2049",
        "2122-fe0f" => "2122",
        "2139-fe0f" => "2139",
        "2194-fe0f" => "2194",
        "2195-fe0f" => "2195",
        "2196-fe0f" => "2196",
        "2197-fe0f" => "2197",
        "2198-fe0f" => "2198",
        "2199-fe0f" => "2199",
        "21a9-fe0f" => "21a9",
        "21aa-fe0f" => "21aa",
        "23-fe0f-20e3" => "23-20e3",
        "23-fe0f" => "23",
        "231a-fe0f" => "231a",
        "231b-fe0f" => "231b",
        "2328-fe0f" => "2328",
        "23cf-fe0f" => "23cf",
        "23ed-fe0f" => "23ed",
        "23ee-fe0f" => "23ee",
        "23ef-fe0f" => "23ef",
        "23f1-fe0f" => "23f1",
        "23f2-fe0f" => "23f2",
        "23f8-fe0f" => "23f8",
        "23f9-fe0f" => "23f9",
        "23fa-fe0f" => "23fa",
        "24c2-fe0f" => "24c2",
        "25aa-fe0f" => "25aa",
        "25ab-fe0f" => "25ab",
        "25b6-fe0f" => "25b6",
        "25c0-fe0f" => "25c0",
        "25fb-fe0f" => "25fb",
        "25fc-fe0f" => "25fc",
        "25fd-fe0f" => "25fd",
        "25fe-fe0f" => "25fe",
        "2600-fe0f" => "2600",
        "2601-fe0f" => "2601",
        "2602-fe0f" => "2602",
        "2603-fe0f" => "2603",
        "2604-fe0f" => "2604",
        "260e-fe0f" => "260e",
        "2611-fe0f" => "2611",
        "2614-fe0f" => "2614",
        "2615-fe0f" => "2615",
        "2618-fe0f" => "2618",
        "261d-fe0f" => "261d",
        "2620-fe0f" => "2620",
        "2622-fe0f" => "2622",
        "2623-fe0f" => "2623",
        "2626-fe0f" => "2626",
        "262a-fe0f" => "262a",
        "262e-fe0f" => "262e",
        "262f-fe0f" => "262f",
        "2638-fe0f" => "2638",
        "2639-fe0f" => "2639",
        "263a-fe0f" => "263a",
        "2648-fe0f" => "2648",
        "2649-fe0f" => "2649",
        "264a-fe0f" => "264a",
        "264b-fe0f" => "264b",
        "264c-fe0f" => "264c",
        "264d-fe0f" => "264d",
        "264e-fe0f" => "264e",
        "264f-fe0f" => "264f",
        "2650-fe0f" => "2650",
        "2651-fe0f" => "2651",
        "2652-fe0f" => "2652",
        "2653-fe0f" => "2653",
        "2660-fe0f" => "2660",
        "2663-fe0f" => "2663",
        "2665-fe0f" => "2665",
        "2666-fe0f" => "2666",
        "2668-fe0f" => "2668",
        "267b-fe0f" => "267b",
        "267f-fe0f" => "267f",
        "2692-fe0f" => "2692",
        "2693-fe0f" => "2693",
        "2694-fe0f" => "2694",
        "2696-fe0f" => "2696",
        "2697-fe0f" => "2697",
        "2699-fe0f" => "2699",
        "269b-fe0f" => "269b",
        "269c-fe0f" => "269c",
        "26a0-fe0f" => "26a0",
        "26a1-fe0f" => "26a1",
        "26aa-fe0f" => "26aa",
        "26ab-fe0f" => "26ab",
        "26b0-fe0f" => "26b0",
        "26b1-fe0f" => "26b1",
        "26bd-fe0f" => "26bd",
        "26be-fe0f" => "26be",
        "26c4-fe0f" => "26c4",
        "26c5-fe0f" => "26c5",
        "26c8-fe0f" => "26c8",
        "26cf-fe0f" => "26cf",
        "26d1-fe0f" => "26d1",
        "26d3-fe0f" => "26d3",
        "26d4-fe0f" => "26d4",
        "26e9-fe0f" => "26e9",
        "26ea-fe0f" => "26ea",
        "26f0-fe0f" => "26f0",
        "26f1-fe0f" => "26f1",
        "26f2-fe0f" => "26f2",
        "26f3-fe0f" => "26f3",
        "26f4-fe0f" => "26f4",
        "26f5-fe0f" => "26f5",
        "26f7-fe0f" => "26f7",
        "26f8-fe0f" => "26f8",
        "26f9-fe0f" => "26f9",
        "26fa-fe0f" => "26fa",
        "26fd-fe0f" => "26fd",
        "2702-fe0f" => "2702",
        "2708-fe0f" => "2708",
        "2709-fe0f" => "2709",
        "270c-fe0f" => "270c",
        "270d-fe0f" => "270d",
        "270f-fe0f" => "270f",
        "2712-fe0f" => "2712",
        "2714-fe0f" => "2714",
        "2716-fe0f" => "2716",
        "271d-fe0f" => "271d",
        "2721-fe0f" => "2721",
        "2733-fe0f" => "2733",
        "2734-fe0f" => "2734",
        "2744-fe0f" => "2744",
        "2747-fe0f" => "2747",
        "2757-fe0f" => "2757",
        "2763-fe0f" => "2763",
        "2764-fe0f" => "2764",
        "27a1-fe0f" => "27a1",
        "2934-fe0f" => "2934",
        "2935-fe0f" => "2935",
        "2a-fe0f-20e3" => "2a-20e3",
        "2a-fe0f" => "2a",
        "2b05-fe0f" => "2b05",
        "2b06-fe0f" => "2b06",
        "2b07-fe0f" => "2b07",
        "2b1b-fe0f" => "2b1b",
        "2b1c-fe0f" => "2b1c",
        "2b50-fe0f" => "2b50",
        "2b55-fe0f" => "2b55",
        "30-fe0f-20e3" => "30-20e3",
        "30-fe0f" => "30",
        "3030-fe0f" => "3030",
        "303d-fe0f" => "303d",
        "31-fe0f-20e3" => "31-20e3",
        "31-fe0f" => "31",
        "32-fe0f-20e3" => "32-20e3",
        "32-fe0f" => "32",
        "3297-fe0f" => "3297",
        "3299-fe0f" => "3299",
        "33-fe0f-20e3" => "33-20e3",
        "33-fe0f" => "33",
        "34-fe0f-20e3" => "34-20e3",
        "34-fe0f" => "34",
        "35-fe0f-20e3" => "35-20e3",
        "35-fe0f" => "35",
        "36-fe0f-20e3" => "36-20e3",
        "36-fe0f" => "36",
        "37-fe0f-20e3" => "37-20e3",
        "37-fe0f" => "37",
        "38-fe0f-20e3" => "38-20e3",
        "38-fe0f" => "38",
        "39-fe0f-20e3" => "39-20e3",
        "39-fe0f" => "39",
        "a9-fe0f" => "a9",
        "ae-fe0f" => "ae",
      }

      private

      # @return [String]
      def directory_name
        if @format == "svg"
          "2/svg"
        else
          "2/72x72"
        end
      end

      # @note Implementation for Somemoji::EmojiExtractors::DownloadableEmojiExtractor
      def emojis
        ::Somemoji.twemoji_emoji_collection
      end

      # @note Implementation for Somemoji::EmojiExtractors::DownloadableEmojiExtractor
      def find_remote_emoji_path(emoji)
        basename = emoji.code_points.map do |code_point|
          code_point.to_i(16).to_s(16)
        end.join("-")
        basename = CONVERSION_TABLE[basename] || basename
        "/twitter/twemoji/v2.2.1/#{directory_name}/#{basename}.#{extension}"
      end

      # @note Implementation for Somemoji::EmojiExtractors::DownloadableEmojiExtractor
      # @return [String]
      def host
        HOST
      end
    end
  end
end
