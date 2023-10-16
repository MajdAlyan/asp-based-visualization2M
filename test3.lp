graph(applicationandprocessorandrouter).
attr(graph,applicationandprocessorandrouter,label,"Application and Processor and Router").
graph(applicationa1).
graph(applicationa1,applicationandprocessorandrouter).
graph(applicationa2, applicationandprocessorandrouter).
graph(processorandrouter, applicationandprocessorandrouter).
node(t1,applicationa1).
node(t2,applicationa1).
node(t3,applicationa1).
edge((t1,t2),applicationa1).
attr(edge, (t1,t2),label,"c1").
edge((t2,t3), applicationa1).
attr(edge, (t2,t3),label,"c2").
attr(graph, applicationa1, label, "Application a1" ).
graph(applicationa2).
node(t4,applicationa2).
node(t5, applicationa2).
edge((t4,t5),applicationa2).
attr(edge,(t4,t5),label,"c3").
attr(graph, applicationa2, label, "Application a2").
graph(processorandrouter).
node(r1,processorandrouter).
attr(node, r1, shape, square).
node(p1,processorandrouter).
edge((r1,p1),processorandrouter).
attr(edge,(r1,p1),label,"l1").
node(r2,processorandrouter).
attr(node, r2, shape, square).
node(p2,processorandrouter).
edge((r2,p2),processorandrouter).
attr(edge,(r2,p2),label,"l2").

node(r3, processorandrouter).
attr(node, r3, shape, square).
node(p3,processorandrouter).
edge((r3,p3),processorandrouter).
attr(edge,(r3,p3),label,"l3").

node(r4,processorandrouter).
attr(node, r4,shape, square).
node(p4,processorandrouter).
edge((r4,p4),processorandrouter).
attr(edge,(r4,p4),label,"l4").

edge((r1,r2),processorandrouter).
attr(edge,(r1,r2),label,"l5").

edge((r2,r3),processorandrouter).
attr(edge,(r2,r3),label,"l6").

edge((r3,r4),processorandrouter).
attr(edge,(r3,r4),label,"l7").

edge((r4,r1),processorandrouter).
attr(edge,(r4,r1),label,"l8").

edge((p1,r1),processorandrouter).
attr(edge,(p1,r1),label,"l9").

edge((p2,r2),processorandrouter).
attr(edge,(p2,r2),label,"l10").

edge((p3,r3),processorandrouter).
attr(edge,(p3,r3),label,"l11").

edge((p4,r4),processorandrouter).
attr(edge,(p4,r4),label,"l12").

edge((r2,r1),processorandrouter).
attr(edge,(r2,r1),label,"l13").
edge((r3,r2),processorandrouter).
attr(edge,(r3,r2),label,"l14").
edge((r4,r3),processorandrouter).
attr(edge,(r4,r3),label,"l15").
edge((r1,r4),processorandrouter).
attr(edge,(r1,r4),label,"l16").
attr(graph, processorandrouter, label, "Processors and Routers").
edge((t1,p1),applicationandprocessorandrouter).
attr(edge,(t1,p1),label,"m1x1").
edge((t1,p2),applicationandprocessorandrouter).
attr(edge,(t1,p2),label,"m1x2").
edge((t2,p3),applicationandprocessorandrouter).
attr(edge,(t2,p3),label,"m2x2").
edge((t3,p4), applicationandprocessorandrouter).
attr(edge,(t3,p4),label,"m3x4").
edge((t4,p4),applicationandprocessorandrouter).
attr(edge,(t4,p4), label,"m4x4").
edge((t5,p1),applicationandprocessorandrouter).
attr(edge,(t5,p1), label,"m5x1").
edge((t5,p2),applicationandprocessorandrouter).
attr(edge,(t5,p2),label,"m5x2").
edge((t5,p3),applicationandprocessorandrouter).
attr(edge,(t5,p3), label,"m5x3").



