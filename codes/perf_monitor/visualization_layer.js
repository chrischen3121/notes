<snip>
var evtSource = new EventSource("/feed");
evtSource.onmessage = function(e) {
    var obj = JSON.parse(e.data);
    if (!(obj.color in cpu)) {
        add_timeseries(cpu, cpu_chart, obj.color);
    }
    if (!(obj.color in mem)) {
        add_timeseries(mem, mem_chart, obj.color);
    }
    cpu[obj.color].append(
        Date.parse(obj.timestamp), obj.cpu);
    mem[obj.color].append(
        Date.parse(obj.timestamp), obj.mem);
};
<snip>
