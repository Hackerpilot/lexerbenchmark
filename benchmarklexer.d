import stdx.d.lexer;
import std.file;
import std.stdio;
import std.datetime;
import std.array;
import std.algorithm;

enum RUN_COUNT = 200;

void main(string[] args)
{
    LexerConfig config;
    auto f = File(args[1]);
    ubyte[] b = uninitializedArray!(ubyte[])(f.size);
    f.rawRead(b);
    StopWatch sw = StopWatch(AutoStart.no);
    float[RUN_COUNT] timings;
	foreach (i; 0 .. RUN_COUNT)
	{
		int count;
		sw.start();
		auto l = b.byToken(config);
		while (!l.empty)
		{
			count++;
			l.popFront();
		}
		sw.stop();
		timings[i] = sw.peek().to!("msecs", float)();
		sw.reset();
	}
	auto s = reduce!((a, b) => a + b)(timings);
    writeln(args[1], "\t", s / RUN_COUNT);
}
