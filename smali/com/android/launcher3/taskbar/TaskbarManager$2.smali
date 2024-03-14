.class final Lcom/android/launcher3/taskbar/TaskbarManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt1/d;


# virtual methods
.method public final onTransitionFinished()V
    .locals 1

    const-string p0, "b/254119092"

    const-string v0, "fold/unfold transition finished getting called."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onTransitionFinishing()V
    .locals 1

    const-string p0, "b/254119092"

    const-string v0, "fold/unfold transition finishing getting called."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onTransitionProgress(F)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "fold/unfold transition progress : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "b/254119092"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onTransitionStarted()V
    .locals 1

    const-string p0, "b/254119092"

    const-string v0, "fold/unfold transition started getting called."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
