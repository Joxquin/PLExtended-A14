.class public final LL1/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;

.field public final c:Landroid/graphics/RectF;

.field public final d:LX1/f;

.field public final e:LK1/a;

.field public final f:Landroid/content/Context;

.field public g:Z

.field public h:LJ1/B;

.field public i:LX1/u;

.field public j:LL1/o;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;LX1/f;LK1/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, LL1/q;->c:Landroid/graphics/RectF;

    iput-object p1, p0, LL1/q;->a:Landroid/content/Context;

    iput-object p2, p0, LL1/q;->f:Landroid/content/Context;

    iput-object p3, p0, LL1/q;->b:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;

    iput-object p4, p0, LL1/q;->d:LX1/f;

    iput-object p5, p0, LL1/q;->e:LK1/a;

    return-void
.end method

.method public static d(LJ1/F;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, LJ1/F;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, LJ1/F;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, LJ1/F;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, LJ1/F;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, LJ1/F;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, LJ1/F;->g:I

    if-nez v1, :cond_1

    iget-object p0, p0, LJ1/F;->a:Ljava/util/List;

    sget v1, LM1/c;->a:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public final a(Landroid/view/ActionMode;Landroid/view/Menu;LL1/o;)V
    .locals 9

    iget-object v0, p0, LL1/q;->h:LJ1/B;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, LJ1/B;->b:Ljava/util/List;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {p2}, Landroid/view/Menu;->clear()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Creating menu - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " items."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LM1/b;->c(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_c

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LJ1/x;

    if-eqz v4, :cond_b

    iget-object v5, v4, LJ1/x;->c:LJ1/w;

    if-nez v5, :cond_2

    goto/16 :goto_5

    :cond_2
    sget v6, LM1/c;->a:I

    iget-object v6, v5, LJ1/w;->g:LJ1/F;

    const/4 v7, 0x1

    if-eqz v6, :cond_6

    invoke-static {v6}, LL1/q;->d(LJ1/F;)Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v5, v5, LJ1/w;->g:LJ1/F;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v5, LJ1/F;->h:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/SuggestParcelables$IntentType;

    if-nez v6, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v5, v7}, LL1/q;->intentInfoToIntent(LJ1/F;Z)Landroid/content/Intent;

    move-result-object v6

    if-nez v6, :cond_4

    goto :goto_1

    :cond_4
    :try_start_0
    iget-object v5, v5, LJ1/F;->h:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/SuggestParcelables$IntentType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    if-eq v5, v7, :cond_5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_5

    const/4 v6, 0x5

    if-eq v5, v6, :cond_5

    goto :goto_2

    :cond_5
    iget-boolean v5, p0, LL1/q;->g:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_6

    goto :goto_1

    :catch_0
    move-exception v5

    const-string v6, "Unable to show menu "

    invoke-static {v6, v5}, LM1/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    move v5, v1

    goto :goto_3

    :cond_6
    :goto_2
    move v5, v7

    :goto_3
    if-nez v5, :cond_7

    goto :goto_5

    :cond_7
    iget-boolean v5, v4, LJ1/x;->e:Z

    const v6, 0x1020041

    if-eqz v5, :cond_9

    if-nez v2, :cond_8

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v2, v3

    add-int/2addr v2, v6

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v5, v3

    const-string v8, ""

    invoke-interface {p2, v6, v2, v5, v8}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-interface {v2}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/MenuItem;->collapseActionView()Z

    :cond_8
    add-int v5, v3, v6

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/2addr v8, v3

    add-int/2addr v8, v7

    iget-object v7, v4, LJ1/x;->b:Ljava/lang/String;

    invoke-interface {v2, v6, v5, v8, v7}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    new-instance v6, LL1/p;

    invoke-direct {v6, p0, v4}, LL1/p;-><init>(LL1/q;LJ1/x;)V

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    invoke-virtual {p0, v4, v5, p3}, LL1/q;->b(LJ1/x;Landroid/view/MenuItem;LL1/o;)V

    goto :goto_5

    :cond_9
    add-int v5, v3, v6

    iget-object v7, v4, LJ1/x;->b:Ljava/lang/String;

    invoke-interface {p2, v6, v5, v3, v7}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v5

    iget-object v6, v4, LJ1/x;->c:LJ1/w;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v7, v6, LJ1/w;->d:Z

    if-eqz v7, :cond_a

    iget-object v6, v6, LJ1/w;->e:Ljava/lang/String;

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_4

    :cond_a
    iget-object v6, v4, LJ1/x;->b:Ljava/lang/String;

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    :goto_4
    const/4 v6, 0x2

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-virtual {p0, v4, v5, p3}, LL1/q;->b(LJ1/x;Landroid/view/MenuItem;LL1/o;)V

    iget-object v4, p0, LL1/q;->h:LJ1/B;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, p0, LL1/q;->b:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_b
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_c
    if-eqz p1, :cond_d

    iget-object p0, p0, LL1/q;->i:LX1/u;

    if-eqz p0, :cond_d

    sget-object p0, Lcom/android/launcher3/BaseDraggingActivity;->AUTO_CANCEL_ACTION_MODE:Ljava/lang/Object;

    invoke-virtual {p1, p0}, Landroid/view/ActionMode;->setTag(Ljava/lang/Object;)V

    :cond_d
    return-void
.end method

.method public final b(LJ1/x;Landroid/view/MenuItem;LL1/o;)V
    .locals 2

    if-eqz p3, :cond_1

    iget-object v0, p1, LJ1/x;->c:LJ1/w;

    if-eqz v0, :cond_1

    sget v1, LM1/c;->a:I

    iget-object v0, v0, LJ1/w;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, LJ1/x;->c:LJ1/w;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, LJ1/w;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p3, p3, LL1/o;->l:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/EntitiesData;

    if-nez p3, :cond_0

    const-string p3, "Unable to find icon for "

    invoke-virtual {p3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {p3, v0}, LM1/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p3, v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/EntitiesData;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p3

    :goto_0
    if-eqz p3, :cond_1

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object p0, p0, LL1/q;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {v0, p0, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Setting icon for "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, LJ1/x;->b:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LM1/b;->c(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, LL1/q;->i:LX1/u;

    if-eqz v0, :cond_4

    iget-object v1, v0, LX1/u;->i:Landroid/view/ActionMode;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    const/4 v1, 0x0

    iput-object v1, v0, LX1/u;->i:Landroid/view/ActionMode;

    :cond_0
    iget-object v0, p0, LL1/q;->h:LJ1/B;

    if-nez v0, :cond_1

    return-void

    :cond_1
    sget v1, LM1/c;->a:I

    iget-object v1, v0, LJ1/B;->b:Ljava/util/List;

    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, LJ1/B;->b:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LJ1/x;

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    iget-object v1, v1, LJ1/x;->c:LJ1/w;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, LL1/q;->h:LJ1/B;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, LL1/q;->b:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final e()V
    .locals 12

    sget-object v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/SuggestParcelables$InteractionType;->e:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/SuggestParcelables$InteractionType;

    iget-object v1, p0, LL1/q;->j:LL1/o;

    if-nez v1, :cond_0

    const-string p0, "onSelectionDismissed logging failed, entitiesModel is null."

    invoke-static {p0}, LM1/b;->c(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_0
    sget v2, LM1/c;->a:I

    invoke-virtual {v1}, LL1/o;->k()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "IMAGE"

    goto :goto_0

    :cond_1
    const-string v2, "TEXT"

    :goto_0
    const-string v3, " Selection Dismissed - OverviewSessionId : %s, TaskSnapshotSessionId : %s, interactionSessionId  : %s, selectionSessionId : %s"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, LL1/o;->h()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, LL1/o;->h:Ljava/lang/String;

    iget-object v5, v1, LL1/o;->i:Ljava/lang/String;

    iget-object v6, v1, LL1/o;->e:Ljava/lang/String;

    filled-new-array {v6, v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LM1/b;->c(Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, LL1/o;->h()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, LL1/o;->h:Ljava/lang/String;

    iget-object v5, v1, LL1/o;->i:Ljava/lang/String;

    invoke-virtual {v1}, LL1/o;->k()Z

    move-result v7

    if-eqz v7, :cond_2

    sget-object v7, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$SelectionFeedback$SelectionType;->f:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$SelectionFeedback$SelectionType;

    goto :goto_1

    :cond_2
    sget-object v7, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$SelectionFeedback$SelectionType;->e:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$SelectionFeedback$SelectionType;

    :goto_1
    iget-object v1, v1, LL1/o;->j:LJ1/e;

    iget-object v8, p0, LL1/q;->h:LJ1/B;

    new-instance v9, LJ1/m;

    invoke-direct {v9}, LJ1/m;-><init>()V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iput-wide v10, v9, LJ1/m;->b:J

    new-instance v10, LJ1/r;

    invoke-direct {v10}, LJ1/r;-><init>()V

    iput-object v6, v10, LJ1/r;->f:Ljava/lang/String;

    iput-object v3, v10, LJ1/r;->g:Ljava/lang/String;

    iput-object v4, v10, LJ1/r;->h:Ljava/lang/String;

    iput-object v5, v10, LJ1/r;->i:Ljava/lang/String;

    invoke-static {v8, v10}, LL1/t;->a(LJ1/B;LJ1/r;)V

    iput-object v10, v9, LJ1/m;->a:Ljava/lang/Object;

    iput-object v7, v10, LJ1/r;->a:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$SelectionFeedback$SelectionType;

    sget-object v3, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$SelectionFeedback$SelectionInteraction;->e:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$SelectionFeedback$SelectionInteraction;

    iput-object v3, v10, LJ1/r;->d:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$SelectionFeedback$SelectionInteraction;

    if-eqz v1, :cond_3

    iput-object v1, v10, LJ1/r;->j:LJ1/e;

    :cond_3
    if-eqz v8, :cond_4

    iput-object v8, v10, LJ1/r;->b:LJ1/B;

    :cond_4
    iput-object v0, v10, LJ1/r;->k:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/SuggestParcelables$InteractionType;

    new-instance v0, LJ1/n;

    invoke-direct {v0}, LJ1/n;-><init>()V

    const/4 v1, 0x0

    int-to-long v3, v1

    iput-wide v3, v0, LJ1/n;->b:J

    iput-object v6, v0, LJ1/n;->c:Ljava/lang/String;

    iput-object v2, v0, LJ1/n;->a:Ljava/util/List;

    invoke-virtual {p0, v6, v0}, LL1/q;->j(Ljava/lang/String;LJ1/n;)V

    :goto_2
    return-void
.end method

.method public final f(Landroid/view/MenuItem;)Z
    .locals 14

    iget-object v0, p0, LL1/q;->h:LJ1/B;

    const-string v1, "Invalid state for menu: no entity"

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_26

    iget-object v4, p0, LL1/q;->j:LL1/o;

    if-nez v4, :cond_0

    goto/16 :goto_f

    :cond_0
    iget-object v0, v0, LJ1/B;->b:Ljava/util/List;

    if-nez v0, :cond_1

    return v3

    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v4, 0x1020041

    sub-int/2addr p1, v4

    if-ltz p1, :cond_25

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt p1, v4, :cond_2

    goto/16 :goto_e

    :cond_2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LJ1/x;

    if-nez p1, :cond_3

    return v3

    :cond_3
    sget-object v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/SuggestParcelables$InteractionType;->e:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/SuggestParcelables$InteractionType;

    iget-object v4, p0, LL1/q;->j:LL1/o;

    if-nez v4, :cond_4

    const-string v0, "onSuggestViewActionInvoked logging failed, entitiesModel is null."

    invoke-static {v0}, LM1/b;->c(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_4
    sget v5, LM1/c;->a:I

    invoke-virtual {v4}, LL1/o;->k()Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "IMAGE"

    goto :goto_0

    :cond_5
    const-string v5, "TEXT"

    :goto_0
    const-string v6, " Action Invoked - OverviewSessionId : %s, TaskSnapshotSessionId : %s, interactionSessionId  : %s, selectionSessionId : %s"

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, LL1/o;->h()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v4, LL1/o;->h:Ljava/lang/String;

    iget-object v8, v4, LL1/o;->i:Ljava/lang/String;

    iget-object v9, v4, LL1/o;->e:Ljava/lang/String;

    filled-new-array {v9, v6, v7, v8}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, LM1/b;->c(Ljava/lang/String;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4}, LL1/o;->h()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v4, LL1/o;->h:Ljava/lang/String;

    iget-object v8, v4, LL1/o;->i:Ljava/lang/String;

    invoke-virtual {v4}, LL1/o;->k()Z

    move-result v4

    if-eqz v4, :cond_6

    sget-object v4, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$SelectionFeedback$SelectionType;->f:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$SelectionFeedback$SelectionType;

    goto :goto_1

    :cond_6
    sget-object v4, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$SelectionFeedback$SelectionType;->e:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$SelectionFeedback$SelectionType;

    :goto_1
    iget-object v10, p0, LL1/q;->h:LJ1/B;

    new-instance v11, LJ1/m;

    invoke-direct {v11}, LJ1/m;-><init>()V

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    iput-wide v12, v11, LJ1/m;->b:J

    new-instance v12, LJ1/i;

    invoke-direct {v12}, LJ1/i;-><init>()V

    iput-object v9, v12, LJ1/i;->f:Ljava/lang/String;

    iput-object v6, v12, LJ1/i;->g:Ljava/lang/String;

    iput-object v7, v12, LJ1/i;->h:Ljava/lang/String;

    iput-object v8, v12, LJ1/i;->i:Ljava/lang/String;

    iput-object v12, v11, LJ1/m;->a:Ljava/lang/Object;

    sget-object v6, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ActionFeedback$ActionInteraction;->d:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ActionFeedback$ActionInteraction;

    iput-object v6, v12, LJ1/i;->e:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ActionFeedback$ActionInteraction;

    iput-object v4, v12, LJ1/i;->a:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$SelectionFeedback$SelectionType;

    if-eqz v10, :cond_7

    iput-object v10, v12, LJ1/i;->b:LJ1/B;

    invoke-static {v10, v4}, LL1/t;->e(LJ1/B;Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$SelectionFeedback$SelectionType;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v12, LJ1/i;->j:Ljava/lang/String;

    invoke-static {v10}, LL1/t;->d(LJ1/B;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v12, LJ1/i;->c:Ljava/util/List;

    invoke-static {v10}, LL1/t;->c(LJ1/B;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v12, LJ1/i;->k:Ljava/util/List;

    :cond_7
    iget-object v4, p1, LJ1/x;->c:LJ1/w;

    iput-object v4, v12, LJ1/i;->d:LJ1/w;

    iget-object v4, v12, LJ1/i;->k:Ljava/util/List;

    if-eqz v4, :cond_9

    move v4, v3

    :goto_2
    iget-object v6, v12, LJ1/i;->k:Ljava/util/List;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_9

    iget-object v6, v12, LJ1/i;->k:Ljava/util/List;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LJ1/k;

    iget-object v6, v6, LJ1/k;->a:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v12, LJ1/i;->d:LJ1/w;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v7, LJ1/w;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-static {p1, v4}, LL1/t;->b(LJ1/x;I)LJ1/k;

    move-result-object v6

    iput-object v6, v12, LJ1/i;->l:LJ1/k;

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_9
    iput-object v0, v12, LJ1/i;->m:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/SuggestParcelables$InteractionType;

    new-instance v0, LJ1/n;

    invoke-direct {v0}, LJ1/n;-><init>()V

    int-to-long v6, v3

    iput-wide v6, v0, LJ1/n;->b:J

    iput-object v9, v0, LJ1/n;->c:Ljava/lang/String;

    sget v4, LM1/c;->a:I

    iput-object v5, v0, LJ1/n;->a:Ljava/util/List;

    invoke-virtual {p0, v9, v0}, LL1/q;->j(Ljava/lang/String;LJ1/n;)V

    :goto_3
    iget-object v0, p0, LL1/q;->h:LJ1/B;

    if-eqz v0, :cond_24

    iget-object v0, p0, LL1/q;->j:LL1/o;

    if-nez v0, :cond_a

    goto/16 :goto_c

    :cond_a
    iget-object v0, p1, LJ1/x;->c:LJ1/w;

    const/4 v1, 0x1

    if-eqz v0, :cond_23

    iget-object v4, p1, LJ1/x;->b:Ljava/lang/String;

    iput-object v4, v0, LJ1/w;->b:Ljava/lang/String;

    iget-object v4, v0, LJ1/w;->g:LJ1/F;

    const-string v5, "Error launching intent for "

    iget-object v6, p0, LL1/q;->b:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;

    if-eqz v4, :cond_1f

    invoke-static {v4}, LL1/q;->d(LJ1/F;)Z

    move-result v4

    if-nez v4, :cond_1f

    iget-object v4, v0, LJ1/w;->g:LJ1/F;

    sget v7, LM1/c;->a:I

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v4, v1}, LL1/q;->intentInfoToIntent(LJ1/F;Z)Landroid/content/Intent;

    move-result-object v4

    if-nez v4, :cond_b

    goto/16 :goto_b

    :cond_b
    :try_start_0
    iget-object v7, p0, LL1/q;->h:LJ1/B;

    if-eqz v7, :cond_c

    invoke-virtual {v6}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->a()V

    :cond_c
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v7, p0, LL1/q;->a:Landroid/content/Context;

    if-eqz v6, :cond_1e

    :try_start_1
    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1e

    iget-object v0, v0, LJ1/w;->g:LJ1/F;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, LJ1/F;->h:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/SuggestParcelables$IntentType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    if-eq v0, v1, :cond_1d

    const/4 v6, 0x2

    iget-object v7, p0, LL1/q;->d:LX1/f;

    if-eq v0, v6, :cond_1a

    const/4 v6, 0x3

    if-eq v0, v6, :cond_17

    const/4 v6, 0x4

    if-eq v0, v6, :cond_14

    const/4 v6, 0x5

    if-eq v0, v6, :cond_11

    const/4 v6, 0x7

    if-eq v0, v6, :cond_d

    :try_start_2
    iget-object p0, p0, LL1/q;->f:Landroid/content/Context;

    invoke-virtual {p0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_b

    :cond_d
    iget-object p0, p0, LL1/q;->j:LL1/o;

    if-eqz p0, :cond_10

    invoke-virtual {p0}, LL1/o;->k()Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_5

    :cond_e
    invoke-virtual {p0}, LL1/o;->g()Landroid/graphics/Rect;

    iget-object p0, v7, LX1/f;->b:Lcom/android/quickstep/views/TaskView;

    if-nez p0, :cond_f

    goto :goto_4

    :cond_f
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->launchTaskAnimated()Lcom/android/launcher3/util/RunnableList;

    move-result-object v2

    :goto_4
    if-eqz v2, :cond_23

    new-instance p0, LX1/b;

    invoke-direct {p0, v7, v3}, LX1/b;-><init>(LX1/f;I)V

    invoke-virtual {v2, p0}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    goto/16 :goto_b

    :cond_10
    :goto_5
    const-string p0, "Cannot search for image because no image was found."

    invoke-static {p0, v2}, LM1/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b

    :cond_11
    iget-object p0, p0, LL1/q;->j:LL1/o;

    if-eqz p0, :cond_13

    invoke-virtual {p0}, LL1/o;->k()Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_6

    :cond_12
    invoke-virtual {p0}, LL1/o;->g()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v2, LX1/a;

    invoke-direct {v2, v7, p0, v3}, LX1/a;-><init>(LX1/f;Landroid/graphics/Rect;I)V

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_b

    :cond_13
    :goto_6
    const-string p0, "Cannot copy image because no image was found."

    invoke-static {p0, v2}, LM1/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b

    :cond_14
    iget-object p0, p0, LL1/q;->j:LL1/o;

    if-eqz p0, :cond_16

    invoke-virtual {p0}, LL1/o;->k()Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_7

    :cond_15
    invoke-virtual {p0}, LL1/o;->g()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v2, LX1/a;

    invoke-direct {v2, v7, p0, v1}, LX1/a;-><init>(LX1/f;Landroid/graphics/Rect;I)V

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_b

    :cond_16
    :goto_7
    const-string p0, "Cannot save Image because no image was found."

    invoke-static {p0, v2}, LM1/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b

    :cond_17
    iget-object p0, p0, LL1/q;->j:LL1/o;

    if-eqz p0, :cond_19

    invoke-virtual {p0}, LL1/o;->k()Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_8

    :cond_18
    invoke-virtual {p0}, LL1/o;->g()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v2, LX1/c;

    invoke-direct {v2, v7, p0, v4}, LX1/c;-><init>(LX1/f;Landroid/graphics/Rect;Landroid/content/Intent;)V

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_b

    :cond_19
    :goto_8
    const-string p0, "Cannot open Lens because no image was found."

    invoke-static {p0, v2}, LM1/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b

    :cond_1a
    iget-object p0, p0, LL1/q;->j:LL1/o;

    if-eqz p0, :cond_1c

    invoke-virtual {p0}, LL1/o;->k()Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_9

    :cond_1b
    invoke-virtual {p0}, LL1/o;->g()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {v7, p0, v4}, LX1/f;->j(Landroid/graphics/Rect;Landroid/content/Intent;)V

    goto/16 :goto_b

    :cond_1c
    :goto_9
    const-string p0, "Cannot share image because no image was found."

    invoke-static {p0, v2}, LM1/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b

    :cond_1d
    const-string p0, "text"

    invoke-virtual {v4, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_23

    const-string v0, "clipboard"

    invoke-virtual {v7, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    if-eqz v0, :cond_23

    const v2, 0x7f130098

    invoke-virtual {v7, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    goto/16 :goto_b

    :cond_1e
    invoke-virtual {v7, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_b

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, LJ1/x;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, LM1/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    :cond_1f
    iget-object v4, p0, LL1/q;->j:LL1/o;

    sget v7, LM1/c;->a:I

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, LJ1/w;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v4, LL1/o;->l:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/EntitiesData;

    if-nez v4, :cond_20

    const-string v4, "Unable to find pending intent for "

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v4}, LM1/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v2

    goto :goto_a

    :cond_20
    invoke-virtual {v4, v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/EntitiesData;->getPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    :goto_a
    iget-object v4, p0, LL1/q;->h:LJ1/B;

    if-eqz v4, :cond_21

    invoke-virtual {v6}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->a()V

    :cond_21
    if-eqz v0, :cond_23

    :try_start_3
    iget-object p0, p0, LL1/q;->h:LJ1/B;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean p0, p0, LJ1/B;->s:Z

    if-eqz p0, :cond_22

    const-string p0, "AssistantStarter is null, failed to start assistant intent"

    invoke-static {p0, v2}, LM1/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d

    :cond_22
    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_b

    :catch_1
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Pending Intent canceled for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, LJ1/x;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, LM1/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d

    :catch_2
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, LJ1/x;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, LM1/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d

    :cond_23
    :goto_b
    move v3, v1

    goto :goto_d

    :cond_24
    :goto_c
    invoke-static {v1, v2}, LM1/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_d
    return v3

    :cond_25
    :goto_e
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Invalid menu item clicked; item id = "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, LM1/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v3

    :cond_26
    :goto_f
    invoke-static {v1, v2}, LM1/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v3
.end method

.method public final g()V
    .locals 12

    sget-object v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/SuggestParcelables$InteractionType;->e:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/SuggestParcelables$InteractionType;

    iget-object v1, p0, LL1/q;->j:LL1/o;

    if-nez v1, :cond_0

    const-string p0, "onSelectionShown logging failed, entitiesModel is null."

    invoke-static {p0}, LM1/b;->c(Ljava/lang/String;)V

    return-void

    :cond_0
    sget v2, LM1/c;->a:I

    invoke-virtual {v1}, LL1/o;->k()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "IMAGE"

    goto :goto_0

    :cond_1
    const-string v2, "TEXT"

    :goto_0
    const-string v3, " Selection Shown - OverviewSessionId : %s, TaskSnapshotSessionId : %s, interactionSessionId  : %s, selectionSessionId : %s"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, LL1/o;->h()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, LL1/o;->h:Ljava/lang/String;

    iget-object v5, v1, LL1/o;->i:Ljava/lang/String;

    iget-object v6, v1, LL1/o;->e:Ljava/lang/String;

    filled-new-array {v6, v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LM1/b;->c(Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, LL1/o;->h()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, LL1/o;->h:Ljava/lang/String;

    iget-object v5, v1, LL1/o;->i:Ljava/lang/String;

    invoke-virtual {v1}, LL1/o;->k()Z

    move-result v7

    if-eqz v7, :cond_2

    sget-object v7, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$SelectionFeedback$SelectionType;->f:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$SelectionFeedback$SelectionType;

    goto :goto_1

    :cond_2
    sget-object v7, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$SelectionFeedback$SelectionType;->e:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$SelectionFeedback$SelectionType;

    :goto_1
    iget-object v1, v1, LL1/o;->j:LJ1/e;

    iget-object v8, p0, LL1/q;->h:LJ1/B;

    new-instance v9, LJ1/m;

    invoke-direct {v9}, LJ1/m;-><init>()V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iput-wide v10, v9, LJ1/m;->b:J

    new-instance v10, LJ1/r;

    invoke-direct {v10}, LJ1/r;-><init>()V

    iput-object v6, v10, LJ1/r;->f:Ljava/lang/String;

    iput-object v3, v10, LJ1/r;->g:Ljava/lang/String;

    iput-object v4, v10, LJ1/r;->h:Ljava/lang/String;

    iput-object v5, v10, LJ1/r;->i:Ljava/lang/String;

    invoke-static {v8, v10}, LL1/t;->a(LJ1/B;LJ1/r;)V

    iput-object v10, v9, LJ1/m;->a:Ljava/lang/Object;

    iput-object v7, v10, LJ1/r;->a:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$SelectionFeedback$SelectionType;

    sget-object v3, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$SelectionFeedback$SelectionInteraction;->i:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$SelectionFeedback$SelectionInteraction;

    iput-object v3, v10, LJ1/r;->d:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$SelectionFeedback$SelectionInteraction;

    if-eqz v1, :cond_3

    iput-object v1, v10, LJ1/r;->j:LJ1/e;

    :cond_3
    if-eqz v8, :cond_4

    iput-object v8, v10, LJ1/r;->b:LJ1/B;

    :cond_4
    iput-object v0, v10, LJ1/r;->k:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/SuggestParcelables$InteractionType;

    new-instance v0, LJ1/n;

    invoke-direct {v0}, LJ1/n;-><init>()V

    const/4 v1, 0x0

    int-to-long v3, v1

    iput-wide v3, v0, LJ1/n;->b:J

    iput-object v6, v0, LJ1/n;->c:Ljava/lang/String;

    iput-object v2, v0, LJ1/n;->a:Ljava/util/List;

    invoke-virtual {p0, v6, v0}, LL1/q;->j(Ljava/lang/String;LJ1/n;)V

    return-void
.end method

.method public final h()V
    .locals 11

    iget-object v0, p0, LL1/q;->j:LL1/o;

    if-nez v0, :cond_0

    const-string p0, "onSuggestViewActionMenuShown logging failed, entitiesModel is null."

    invoke-static {p0}, LM1/b;->c(Ljava/lang/String;)V

    return-void

    :cond_0
    sget v1, LM1/c;->a:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, LL1/o;->k()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "IMAGE"

    goto :goto_0

    :cond_1
    const-string v1, "TEXT"

    :goto_0
    const-string v2, " Action Menu Shown - OverviewSessionId : %s, TaskSnapshotSessionId : %s, interactionSessionId  : %s, selectionSessionId : %s"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, LL1/o;->h()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, LL1/o;->h:Ljava/lang/String;

    iget-object v4, v0, LL1/o;->i:Ljava/lang/String;

    iget-object v5, v0, LL1/o;->e:Ljava/lang/String;

    filled-new-array {v5, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LM1/b;->c(Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, LL1/o;->h()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, LL1/o;->h:Ljava/lang/String;

    iget-object v4, v0, LL1/o;->i:Ljava/lang/String;

    invoke-virtual {v0}, LL1/o;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$SelectionFeedback$SelectionType;->f:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$SelectionFeedback$SelectionType;

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$SelectionFeedback$SelectionType;->e:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$SelectionFeedback$SelectionType;

    :goto_1
    iget-object v6, p0, LL1/q;->h:LJ1/B;

    sget-object v7, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/SuggestParcelables$InteractionType;->e:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/SuggestParcelables$InteractionType;

    new-instance v8, LJ1/m;

    invoke-direct {v8}, LJ1/m;-><init>()V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    iput-wide v9, v8, LJ1/m;->b:J

    new-instance v9, LJ1/i;

    invoke-direct {v9}, LJ1/i;-><init>()V

    iput-object v5, v9, LJ1/i;->f:Ljava/lang/String;

    iput-object v2, v9, LJ1/i;->g:Ljava/lang/String;

    iput-object v3, v9, LJ1/i;->h:Ljava/lang/String;

    iput-object v4, v9, LJ1/i;->i:Ljava/lang/String;

    iput-object v9, v8, LJ1/m;->a:Ljava/lang/Object;

    sget-object v2, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ActionFeedback$ActionInteraction;->e:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ActionFeedback$ActionInteraction;

    iput-object v2, v9, LJ1/i;->e:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ActionFeedback$ActionInteraction;

    iput-object v0, v9, LJ1/i;->a:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$SelectionFeedback$SelectionType;

    if-eqz v6, :cond_3

    iput-object v6, v9, LJ1/i;->b:LJ1/B;

    invoke-static {v6, v0}, LL1/t;->e(LJ1/B;Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$SelectionFeedback$SelectionType;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, LJ1/i;->j:Ljava/lang/String;

    invoke-static {v6}, LL1/t;->d(LJ1/B;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v9, LJ1/i;->c:Ljava/util/List;

    invoke-static {v6}, LL1/t;->c(LJ1/B;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v9, LJ1/i;->k:Ljava/util/List;

    :cond_3
    iput-object v7, v9, LJ1/i;->m:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/SuggestParcelables$InteractionType;

    new-instance v0, LJ1/n;

    invoke-direct {v0}, LJ1/n;-><init>()V

    const/4 v2, 0x0

    int-to-long v2, v2

    iput-wide v2, v0, LJ1/n;->b:J

    iput-object v5, v0, LJ1/n;->c:Ljava/lang/String;

    sget v2, LM1/c;->a:I

    iput-object v1, v0, LJ1/n;->a:Ljava/util/List;

    invoke-virtual {p0, v5, v0}, LL1/q;->j(Ljava/lang/String;LJ1/n;)V

    return-void
.end method

.method public final i(LJ1/B;)V
    .locals 11

    iget-object v0, p0, LL1/q;->j:LL1/o;

    if-nez v0, :cond_0

    const-string p0, "onSuggestViewSelectionAdjusted logging failed, entitiesModel is null."

    invoke-static {p0}, LM1/b;->c(Ljava/lang/String;)V

    return-void

    :cond_0
    sget v1, LM1/c;->a:I

    invoke-virtual {v0}, LL1/o;->k()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "IMAGE"

    goto :goto_0

    :cond_1
    const-string v1, "TEXT"

    :goto_0
    const-string v2, " Selection Adjusted - OverviewSessionId : %s, TaskSnapshotSessionId : %s, interactionSessionId  : %s, selectionSessionId : %s"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, LL1/o;->h()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, LL1/o;->h:Ljava/lang/String;

    iget-object v4, v0, LL1/o;->i:Ljava/lang/String;

    iget-object v5, v0, LL1/o;->e:Ljava/lang/String;

    filled-new-array {v5, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LM1/b;->c(Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, LL1/o;->h()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, LL1/o;->h:Ljava/lang/String;

    iget-object v4, v0, LL1/o;->i:Ljava/lang/String;

    invoke-virtual {v0}, LL1/o;->k()Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$SelectionFeedback$SelectionType;->f:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$SelectionFeedback$SelectionType;

    goto :goto_1

    :cond_2
    sget-object v6, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$SelectionFeedback$SelectionType;->e:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$SelectionFeedback$SelectionType;

    :goto_1
    iget-object v0, v0, LL1/o;->j:LJ1/e;

    sget-object v7, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/SuggestParcelables$InteractionType;->e:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/SuggestParcelables$InteractionType;

    new-instance v8, LJ1/m;

    invoke-direct {v8}, LJ1/m;-><init>()V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    iput-wide v9, v8, LJ1/m;->b:J

    new-instance v9, LJ1/r;

    invoke-direct {v9}, LJ1/r;-><init>()V

    iput-object v5, v9, LJ1/r;->f:Ljava/lang/String;

    iput-object v2, v9, LJ1/r;->g:Ljava/lang/String;

    iput-object v3, v9, LJ1/r;->h:Ljava/lang/String;

    iput-object v4, v9, LJ1/r;->i:Ljava/lang/String;

    invoke-static {p1, v9}, LL1/t;->a(LJ1/B;LJ1/r;)V

    iput-object v9, v8, LJ1/m;->a:Ljava/lang/Object;

    iput-object v6, v9, LJ1/r;->a:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$SelectionFeedback$SelectionType;

    sget-object v2, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$SelectionFeedback$SelectionInteraction;->f:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$SelectionFeedback$SelectionInteraction;

    iput-object v2, v9, LJ1/r;->d:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$SelectionFeedback$SelectionInteraction;

    if-eqz v0, :cond_3

    iput-object v0, v9, LJ1/r;->j:LJ1/e;

    :cond_3
    iput-object p1, v9, LJ1/r;->b:LJ1/B;

    iput-object v7, v9, LJ1/r;->k:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/SuggestParcelables$InteractionType;

    new-instance p1, LJ1/n;

    invoke-direct {p1}, LJ1/n;-><init>()V

    const/4 v0, 0x0

    int-to-long v2, v0

    iput-wide v2, p1, LJ1/n;->b:J

    iput-object v5, p1, LJ1/n;->c:Ljava/lang/String;

    iput-object v1, p1, LJ1/n;->a:Ljava/util/List;

    invoke-virtual {p0, v5, p1}, LL1/q;->j(Ljava/lang/String;LJ1/n;)V

    return-void
.end method

.method public intentInfoToIntent(LJ1/F;Z)Landroid/content/Intent;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Checking intent info: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LM1/b;->c(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p1, LJ1/F;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, LJ1/F;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    iget-object v1, p1, LJ1/F;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p1, LJ1/F;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p1, LJ1/F;->b:Ljava/lang/String;

    iget-object v2, p1, LJ1/F;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    iget-object v1, p1, LJ1/F;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p1, LJ1/F;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    :goto_0
    iget-object v1, p1, LJ1/F;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p1, LJ1/F;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_3
    iget-object v1, p1, LJ1/F;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p1, LJ1/F;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    iget v1, p1, LJ1/F;->g:I

    if-eqz v1, :cond_5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_5
    iget-object p1, p1, LJ1/F;->a:Ljava/util/List;

    sget v1, LM1/c;->a:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LJ1/G;

    iget-object v2, v1, LJ1/G;->b:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/SuggestParcelables$IntentParamType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Menu action error: unknown menu intent param type "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_0
    iget-object v2, v1, LJ1/G;->a:Ljava/lang/String;

    iget-boolean v1, v1, LJ1/G;->g:Z

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    :pswitch_1
    iget-object v2, v1, LJ1/G;->a:Ljava/lang/String;

    iget-object v1, v1, LJ1/G;->i:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_1

    :pswitch_2
    if-eqz p2, :cond_6

    iget-object v2, v1, LJ1/G;->a:Ljava/lang/String;

    iget-object v1, v1, LJ1/G;->h:LJ1/F;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, LL1/q;->intentInfoToIntent(LJ1/F;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_1

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Only ONE level of nested intent is allowed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_3
    iget-object v2, v1, LJ1/G;->a:Ljava/lang/String;

    iget-wide v3, v1, LJ1/G;->f:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_1

    :pswitch_4
    iget-object v2, v1, LJ1/G;->a:Ljava/lang/String;

    iget v1, v1, LJ1/G;->e:F

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    goto :goto_1

    :pswitch_5
    iget-object v2, v1, LJ1/G;->a:Ljava/lang/String;

    iget v1, v1, LJ1/G;->d:I

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    :pswitch_6
    iget-object v2, v1, LJ1/G;->a:Ljava/lang/String;

    iget-object v1, v1, LJ1/G;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :goto_2
    iget-object p1, v1, LJ1/G;->b:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/SuggestParcelables$IntentParamType;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, LM1/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p1

    :cond_7
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final j(Ljava/lang/String;LJ1/n;)V
    .locals 1

    iget-object v0, p0, LL1/q;->j:LL1/o;

    if-eqz v0, :cond_0

    iget-object v0, v0, LL1/o;->a:LL1/a0;

    if-eqz v0, :cond_0

    iget-object p0, p0, LL1/q;->e:LK1/a;

    invoke-virtual {v0, p1, p0, p2}, LL1/a0;->i(Ljava/lang/String;LK1/a;LJ1/n;)V

    :cond_0
    return-void
.end method
