.class public final synthetic Lcom/google/android/apps/nexuslauncher/allapps/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic d:Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/u;->d:Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/u;->d:Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->i:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/search/SearchEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->i:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/search/SearchEditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->f:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p1}, Lcom/android/launcher3/views/ActivityContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p1

    sget-object v0, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;->m:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;

    invoke-interface {p1, v0}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->q:I

    goto :goto_3

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->e:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->m()Z

    move-result v0

    new-instance v1, Landroid/graphics/RectF;

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->getViewBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result p1

    iput p1, v1, Landroid/graphics/RectF;->right:F

    iput p1, v1, Landroid/graphics/RectF;->left:F

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_1

    const v2, 0x7f08028d

    goto :goto_0

    :cond_1
    const v2, 0x7f0802a3

    :goto_0
    move v6, v2

    if-eqz v0, :cond_2

    const v2, 0x7f1300fb

    goto :goto_1

    :cond_2
    const v2, 0x7f1300fc

    :goto_1
    move v5, v2

    if-eqz v0, :cond_3

    sget-object v2, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;->w:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;

    goto :goto_2

    :cond_3
    sget-object v2, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;->v:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;

    :goto_2
    move-object v7, v2

    new-instance v2, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v8, Lcom/google/android/apps/nexuslauncher/allapps/v;

    invoke-direct {v8, p0, v0}, Lcom/google/android/apps/nexuslauncher/allapps/v;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;Z)V

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;-><init>(Landroid/content/Context;IILcom/android/launcher3/logging/StatsLogManager$EventEnum;Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->k:Lcom/android/launcher3/views/OptionsPopupView$OptionItem;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->f:Lcom/android/launcher3/views/ActivityContext;

    const/4 v0, 0x1

    invoke-static {p0, v1, p1, v0}, Lcom/android/launcher3/views/OptionsPopupView;->show(Lcom/android/launcher3/views/ActivityContext;Landroid/graphics/RectF;Ljava/util/List;Z)Lcom/android/launcher3/views/OptionsPopupView;

    :goto_3
    return-void
.end method
