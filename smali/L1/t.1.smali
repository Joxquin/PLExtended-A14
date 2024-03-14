.class public final LL1/t;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(LJ1/B;LJ1/r;)V
    .locals 2

    if-eqz p0, :cond_0

    iget-boolean v0, p0, LJ1/B;->c:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, LJ1/B;->d:Ljava/util/List;

    if-eqz p0, :cond_0

    sget v0, LM1/c;->a:I

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LJ1/C;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, LJ1/C;->b:Ljava/lang/String;

    if-eqz p0, :cond_0

    iput-object p0, p1, LJ1/r;->l:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static b(LJ1/x;I)LJ1/k;
    .locals 2

    new-instance v0, LJ1/k;

    invoke-direct {v0}, LJ1/k;-><init>()V

    iget-object v1, p0, LJ1/x;->a:Ljava/lang/String;

    iput-object v1, v0, LJ1/k;->a:Ljava/lang/String;

    iget-object v1, p0, LJ1/x;->b:Ljava/lang/String;

    iput-object v1, v0, LJ1/k;->b:Ljava/lang/String;

    iput p1, v0, LJ1/k;->c:I

    iget-boolean p1, p0, LJ1/x;->e:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ActionMenuItem$ActionMenuItemDisplayMode;->e:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ActionMenuItem$ActionMenuItemDisplayMode;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ActionMenuItem$ActionMenuItemDisplayMode;->d:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ActionMenuItem$ActionMenuItemDisplayMode;

    :goto_0
    iput-object p1, v0, LJ1/k;->d:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ActionMenuItem$ActionMenuItemDisplayMode;

    iget-object p0, p0, LJ1/x;->c:LJ1/w;

    sget p1, LM1/c;->a:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, LJ1/w;->g:LJ1/F;

    iput-object p0, v0, LJ1/k;->e:LJ1/F;

    return-object v0
.end method

.method public static c(LJ1/B;)Ljava/util/List;
    .locals 4

    iget-object v0, p0, LJ1/B;->b:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, LJ1/B;->b:Ljava/util/List;

    sget v3, LM1/c;->a:I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    iget-object v2, p0, LJ1/B;->b:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, LJ1/B;->b:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LJ1/x;

    invoke-static {v2, v1}, LL1/t;->b(LJ1/x;I)LJ1/k;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static d(LJ1/B;)Ljava/util/List;
    .locals 3

    iget-object v0, p0, LJ1/B;->b:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, LJ1/B;->b:Ljava/util/List;

    sget v2, LM1/c;->a:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object p0, p0, LJ1/B;->b:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, LL1/s;

    invoke-direct {v1, v0}, LL1/s;-><init>(Ljava/util/List;)V

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public static e(LJ1/B;Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$SelectionFeedback$SelectionType;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, LJ1/B;->h:Ljava/lang/String;

    const-string v1, "UNKNOWN_VERTICAL_TYPE"

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    sget v2, LM1/c;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$SelectionFeedback$SelectionType;->f:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$SelectionFeedback$SelectionType;

    if-ne p1, v0, :cond_1

    const-string p0, "IMAGE"

    goto :goto_0

    :cond_1
    iget-object p0, p0, LJ1/B;->h:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    return-object p0
.end method
