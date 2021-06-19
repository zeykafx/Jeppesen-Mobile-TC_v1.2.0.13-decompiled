.class Lcom/jeppesen/android/tc/activity/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;


# direct methods
.method constructor <init>(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/jeppesen/android/tc/activity/p;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/p;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    invoke-static {v0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->l(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/p;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    invoke-static {}, Lcom/jeppesen/jeppview/jtca/JITHandler;->b()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->a(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;Ljava/util/List;)Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/p;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    invoke-static {v0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->m(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;)Ljava/util/Iterator;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/p;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    invoke-static {v0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->m(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;)Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/p;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    iget-object v2, p0, Lcom/jeppesen/android/tc/activity/p;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    invoke-static {v2}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->l(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->a(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;Ljava/util/Iterator;)Ljava/util/Iterator;

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/p;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    invoke-static {v0, v1}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->b(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/p;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    invoke-static {v0, v1}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->b(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;Ljava/util/Iterator;)Ljava/util/Iterator;

    :cond_2
    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/p;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    invoke-static {v0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->n(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;)Ljava/util/Iterator;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/p;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    invoke-static {v0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->n(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;)Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/jeppesen/android/tc/activity/p;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/p;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    invoke-static {v0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->m(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;)Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jeppesen/jeppview/jtca/data/Airport;

    invoke-static {v2, v0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->a(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;Lcom/jeppesen/jeppview/jtca/data/Airport;)Lcom/jeppesen/jeppview/jtca/data/Airport;

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/p;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    iget-object v2, p0, Lcom/jeppesen/android/tc/activity/p;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    invoke-static {v2}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->g(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;)Lcom/jeppesen/jeppview/jtca/data/Airport;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jeppesen/jeppview/jtca/data/Airport;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/jeppesen/jeppview/jtca/JITHandler;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->b(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/p;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    iget-object v2, p0, Lcom/jeppesen/android/tc/activity/p;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    invoke-static {v2}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->o(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->b(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;Ljava/util/Iterator;)Ljava/util/Iterator;

    :cond_4
    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/p;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    invoke-static {v0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->n(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;)Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jeppesen/jeppview/jtca/data/Chart;

    :try_start_0
    invoke-static {v0}, Lcom/jeppesen/jeppview/jtca/JITHandler;->b(Lcom/jeppesen/jeppview/jtca/data/Chart;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/jeppesen/android/util/d; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-nez v1, :cond_5

    invoke-static {}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->l()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Chart not found in .bin file ICAO: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/jeppesen/android/tc/activity/p;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    invoke-static {v3}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->g(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;)Lcom/jeppesen/jeppview/jtca/data/Airport;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jeppesen/jeppview/jtca/data/Airport;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/jeppesen/jeppview/jtca/data/Chart;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Count: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/jeppesen/android/tc/activity/p;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    invoke-static {v2}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->p(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/p;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    invoke-virtual {v0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->j()V

    :goto_1
    return-void

    :catch_0
    move-exception v2

    invoke-static {}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->l()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Oh No!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/jeppesen/android/tc/activity/p;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    invoke-static {v2}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->q(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;)V

    invoke-static {v1}, Lcom/jeppesen/android/echarts/TCLNatives;->setPathToTcl(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/p;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    invoke-static {v1}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->r(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;)I

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/p;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/jeppesen/android/tc/activity/p;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    invoke-static {v3}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->p(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/jeppesen/jeppview/jtca/data/Chart;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->b(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->l()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TestHandler called for ICAO: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/jeppesen/android/tc/activity/p;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    invoke-static {v3}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->g(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;)Lcom/jeppesen/jeppview/jtca/data/Airport;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jeppesen/jeppview/jtca/data/Airport;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/jeppesen/jeppview/jtca/data/Chart;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/jeppesen/android/tc/activity/p;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    invoke-static {v3}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->p(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/p;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->a(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;J)J

    invoke-virtual {v0}, Lcom/jeppesen/jeppview/jtca/data/Chart;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/jeppesen/android/echarts/TCLNatives;->setIcao(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/jeppesen/jeppview/jtca/data/Chart;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/jeppesen/android/echarts/TCLNatives;->setIndexNumber(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/jeppesen/jeppview/jtca/data/Chart;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jeppesen/android/echarts/TCLNatives;->setProcedureId(Ljava/lang/String;)V

    invoke-static {}, Lcom/jeppesen/android/tc/MobileTC;->l()V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/p;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    invoke-static {v0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->s(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;)Lcom/jeppesen/android/echarts/view/TCLGLSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jeppesen/android/echarts/view/TCLGLSurfaceView;->requestRender()V

    goto/16 :goto_1
.end method
