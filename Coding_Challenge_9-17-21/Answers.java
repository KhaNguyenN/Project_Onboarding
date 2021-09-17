public class Answers {
    

    public static void main(String[] args) {
        System.out.println(rot13Encrypt("String to be converted"));
        System.out.println(rot13Encrypt("test"));

        System.out.println(octConverter(100));
      
        }
        //Rot13 encryption
        public static String rot13Encrypt(String rotString) {
            rotString = rotString.toLowerCase();
            StringBuilder newRotString = new StringBuilder();
            for(int i = 0; i < rotString.length(); i++){
                char thisCharacter = rotString.charAt(i);
                if (thisCharacter >= 'a' && thisCharacter <= 'm') {
                    thisCharacter += 13;
                }
                else {
                    thisCharacter -= 13;
                }
                newRotString.append(thisCharacter);
            }
            return newRotString.toString();
        }
        //oct converter has a built in function
        public static String octConverter (int number) {
           
                return Integer.toOctalString(number);

        }
        
    }

