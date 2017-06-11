import Html exposing (text)
import Json.Decode exposing(Decoder, decodeString, list, int)

num = "4"
nums = "[1, 4, 5, 7]"

numbersDecoder : Decoder (List Int)
numbersDecoder = list int

decodedNums = decodeString numbersDecoder nums


decoded : Result String Int
decoded = decodeString int num

main = text <| toString <| decodedNums
