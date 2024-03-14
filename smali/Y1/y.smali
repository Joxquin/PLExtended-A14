.class public final LY1/y;
.super Landroid/view/inputmethod/InputConnectionWrapper;
.source "SourceFile"


# instance fields
.field public a:Landroid/view/inputmethod/SurroundingText;

.field public b:I

.field public final synthetic c:Lcom/google/android/apps/nexuslauncher/search/SearchEditText;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/nexuslauncher/search/SearchEditText;Landroid/view/inputmethod/InputConnection;)V
    .locals 0

    iput-object p1, p0, LY1/y;->c:Lcom/google/android/apps/nexuslauncher/search/SearchEditText;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Landroid/view/inputmethod/InputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;Z)V

    invoke-virtual {p0}, LY1/y;->h()V

    return-void
.end method

.method public static synthetic a(LY1/y;Ljava/lang/CharSequence;I)Ljava/lang/Boolean;
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->setComposingText(Ljava/lang/CharSequence;I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(LY1/y;II)Ljava/lang/Boolean;
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->setSelection(II)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(LY1/y;Ljava/lang/CharSequence;I)Ljava/lang/Boolean;
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->commitText(Ljava/lang/CharSequence;I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(LY1/y;II)Ljava/lang/Boolean;
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->setComposingRegion(II)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(LY1/y;II)Ljava/lang/Boolean;
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->deleteSurroundingText(II)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(LY1/y;)Ljava/lang/Boolean;
    .locals 0

    invoke-super {p0}, Landroid/view/inputmethod/InputConnectionWrapper;->finishComposingText()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final beginBatchEdit()Z
    .locals 2

    sget-boolean v0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->y:Z

    if-eqz v0, :cond_0

    const-string v0, "QuickLaunchV2"

    const-string v1, "beginBatchEdit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, LY1/y;->h()V

    iget v0, p0, LY1/y;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LY1/y;->b:I

    invoke-super {p0}, Landroid/view/inputmethod/InputConnectionWrapper;->beginBatchEdit()Z

    move-result p0

    return p0
.end method

.method public final commitText(Ljava/lang/CharSequence;I)Z
    .locals 2

    sget-boolean v0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->y:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "commitText:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickLaunchV2"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, LY1/x;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, LY1/x;-><init>(LY1/y;Ljava/lang/CharSequence;II)V

    invoke-virtual {p0, v0}, LY1/y;->i(Ljava/util/concurrent/Callable;)Z

    move-result p0

    return p0
.end method

.method public final deleteSurroundingText(II)Z
    .locals 2

    sget-boolean v0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->y:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "deleteSurroundingText:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickLaunchV2"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, LY1/v;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, LY1/v;-><init>(LY1/y;III)V

    invoke-virtual {p0, v0}, LY1/y;->i(Ljava/util/concurrent/Callable;)Z

    move-result p0

    return p0
.end method

.method public final endBatchEdit()Z
    .locals 2

    sget-boolean v0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->y:Z

    if-eqz v0, :cond_0

    const-string v0, "QuickLaunchV2"

    const-string v1, "endBatchEdit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, LY1/y;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, LY1/y;->b:I

    if-gez v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, LY1/y;->b:I

    invoke-super {p0}, Landroid/view/inputmethod/InputConnectionWrapper;->endBatchEdit()Z

    move-result p0

    return p0

    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {p0}, LY1/y;->g()V

    :cond_2
    invoke-super {p0}, Landroid/view/inputmethod/InputConnectionWrapper;->endBatchEdit()Z

    move-result p0

    return p0
.end method

.method public final finishComposingText()Z
    .locals 2

    sget-boolean v0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->y:Z

    if-eqz v0, :cond_0

    const-string v0, "QuickLaunchV2"

    const-string v1, "finishComposingText"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, LY1/w;

    invoke-direct {v0, p0}, LY1/w;-><init>(LY1/y;)V

    invoke-virtual {p0, v0}, LY1/y;->i(Ljava/util/concurrent/Callable;)Z

    move-result p0

    return p0
.end method

.method public final g()V
    .locals 8

    iget v0, p0, LY1/y;->b:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    sget-boolean p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->y:Z

    if-eqz p0, :cond_1

    const-string p0, "QuickLaunchV2"

    const-string v0, "===== isInBatchEdit; return"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    const/16 v0, 0x400

    invoke-virtual {p0, v0, v0, v1}, Landroid/view/inputmethod/InputConnectionWrapper;->getSurroundingText(III)Landroid/view/inputmethod/SurroundingText;

    move-result-object v4

    iget-object v0, p0, LY1/y;->c:Lcom/google/android/apps/nexuslauncher/search/SearchEditText;

    iget-object v2, v0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->o:LY1/g;

    iget-object v3, p0, LY1/y;->a:Landroid/view/inputmethod/SurroundingText;

    iget-object v5, v0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->i:Ljava/lang/String;

    iget-object v6, v0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->h:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    iget-object v7, v0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->v:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual/range {v2 .. v7}, LY1/g;->d(Landroid/view/inputmethod/SurroundingText;Landroid/view/inputmethod/SurroundingText;Ljava/lang/String;Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V

    invoke-virtual {p0}, LY1/y;->h()V

    return-void
.end method

.method public final h()V
    .locals 2

    iget v0, p0, LY1/y;->b:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    const/16 v0, 0x400

    invoke-virtual {p0, v0, v0, v1}, Landroid/view/inputmethod/InputConnectionWrapper;->getSurroundingText(III)Landroid/view/inputmethod/SurroundingText;

    move-result-object v0

    iput-object v0, p0, LY1/y;->a:Landroid/view/inputmethod/SurroundingText;

    :cond_1
    return-void
.end method

.method public final i(Ljava/util/concurrent/Callable;)Z
    .locals 1

    invoke-virtual {p0}, LY1/y;->h()V

    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0}, LY1/y;->g()V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "QuickLaunchV2"

    const-string v0, "Failed to run watchForInput"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final setComposingRegion(II)Z
    .locals 2

    sget-boolean v0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->y:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setComposingRegion:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickLaunchV2"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, LY1/v;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, p2, v1}, LY1/v;-><init>(LY1/y;III)V

    invoke-virtual {p0, v0}, LY1/y;->i(Ljava/util/concurrent/Callable;)Z

    move-result p0

    return p0
.end method

.method public final setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 2

    sget-boolean v0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->y:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setComposingText:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickLaunchV2"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, LY1/x;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, LY1/x;-><init>(LY1/y;Ljava/lang/CharSequence;II)V

    invoke-virtual {p0, v0}, LY1/y;->i(Ljava/util/concurrent/Callable;)Z

    move-result p0

    return p0
.end method

.method public final setSelection(II)Z
    .locals 2

    sget-boolean v0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->y:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setSelection:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickLaunchV2"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, LY1/v;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, LY1/v;-><init>(LY1/y;III)V

    invoke-virtual {p0, v0}, LY1/y;->i(Ljava/util/concurrent/Callable;)Z

    move-result p0

    return p0
.end method
