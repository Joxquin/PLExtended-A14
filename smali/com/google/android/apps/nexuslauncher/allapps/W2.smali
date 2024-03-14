.class public final synthetic Lcom/google/android/apps/nexuslauncher/allapps/W2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/W2;->d:I

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/W2;->e:Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/W2;->d:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/W2;->e:Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->w:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/search/SearchEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->w:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/search/SearchEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->w:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/search/SearchEditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->w:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/search/SearchEditText;

    invoke-virtual {p1, v1}, Lcom/android/launcher3/ExtendedEditText;->showKeyboard(Z)V

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    check-cast p1, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p1}, Lcom/android/launcher3/views/ActivityContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p1

    sget-object v0, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;->m:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;

    invoke-interface {p1, v0}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->F:I

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/allapps/y0;->D:Ljava/util/List;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object v0, p1, Lcom/google/android/apps/nexuslauncher/allapps/y0;->p:Lcom/google/android/apps/nexuslauncher/allapps/s1;

    iget-boolean v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/s1;->m:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->x()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->w:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/search/SearchEditText;

    invoke-virtual {p1}, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->clearSearchResult()V

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->clearSearchResult()V

    :cond_1
    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/W2;->e:Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    check-cast p1, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p1}, Lcom/android/launcher3/views/ActivityContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p1

    sget-object v0, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;->f:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;

    invoke-interface {p1, v0}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, LW1/m;->a(Landroid/content/Context;)V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/W2;->e:Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;

    sget p1, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->f0:I

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->m()V

    return-void

    :goto_0
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/W2;->e:Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;

    sget v0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->f0:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/graphics/RectF;

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->getViewBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result p1

    iput p1, v0, Landroid/graphics/RectF;->right:F

    iput p1, v0, Landroid/graphics/RectF;->left:F

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->n:Lcom/android/launcher3/views/OptionsPopupView$OptionItem;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object v2, v2, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    check-cast v2, Lcom/android/launcher3/views/ActivityContext;

    invoke-static {v2, v0, p1, v1}, Lcom/android/launcher3/views/OptionsPopupView;->show(Lcom/android/launcher3/views/ActivityContext;Landroid/graphics/RectF;Ljava/util/List;Z)Lcom/android/launcher3/views/OptionsPopupView;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->c0:Lcom/android/launcher3/views/OptionsPopupView;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
