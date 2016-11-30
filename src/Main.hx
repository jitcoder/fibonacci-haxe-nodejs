class Main {
    static function main() {
        var startTime = Date.now().getTime();
        var num = 50000000;

        var a:haxe.Int64 = 0;
        var b:haxe.Int64 = 1;
        var f:haxe.Int64 = 1;

        for(i in 2...num){
            f = a + b;
            a = b;
            b = f;
        }
        var endTime = Date.now().getTime();

        trace(num, " value in sequence is ", f);
        trace("Time taken: ", endTime - startTime);
    }
}
