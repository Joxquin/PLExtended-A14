.class public final Lb2/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lb2/f;->a:I

    iput-object p2, p0, Lb2/f;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 10

    iget v0, p0, Lb2/f;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    check-cast p1, Ljava/lang/Boolean;

    iget-object p0, p0, Lb2/f;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/ShortcutAndWidgetContainer;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    goto :goto_0

    :cond_0
    return-void

    :goto_1
    check-cast p1, Lcom/android/launcher3/anim/PendingAnimation;

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lb2/f;->b:Ljava/lang/Object;

    check-cast p0, Lb2/h;

    sget-object v1, Lcom/google/android/apps/nexuslauncher/v;->a:Lcom/google/android/apps/nexuslauncher/v;

    iget-object v0, p0, Lb2/h;->a:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v2

    const-string v3, "launcher.workspace"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/google/android/apps/nexuslauncher/v;->c(Lcom/android/launcher3/Workspace;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v4

    iget-object v5, p0, Lb2/h;->a:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    iget-boolean v6, p0, Lb2/h;->d:Z

    iget-wide v2, p0, Lb2/h;->g:J

    long-to-float v0, v2

    iget-wide v2, p0, Lb2/h;->h:J

    long-to-float v2, v2

    div-float v7, v0, v2

    move-object v2, p1

    move-object v3, v8

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/apps/nexuslauncher/v;->b(Lcom/android/launcher3/anim/PendingAnimation;Ljava/util/List;Lcom/android/launcher3/Hotseat;Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;ZF)V

    iget-boolean v0, p0, Lb2/h;->d:Z

    if-eqz v0, :cond_b

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lb2/h;->b:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    iget-object v2, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->r:LK2/C;

    iget-object v3, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->h:Lj0/n;

    iget v3, v3, Lj0/n;->i:I

    iget-object v2, v2, LK2/C;->d:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LK2/A;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v2, v2, LK2/A;->b:Lcom/google/android/systemui/smartspace/BcSmartspaceCard;

    goto :goto_2

    :cond_1
    move-object v2, v3

    :goto_2
    const/4 v4, 0x0

    if-eqz v2, :cond_3

    iget-object v2, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->r:LK2/C;

    iget-object v1, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->h:Lj0/n;

    iget v1, v1, Lj0/n;->i:I

    iget-object v2, v2, LK2/C;->d:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LK2/A;

    if-eqz v1, :cond_2

    iget-object v3, v1, LK2/A;->b:Lcom/google/android/systemui/smartspace/BcSmartspaceCard;

    :cond_2
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    goto :goto_4

    :cond_3
    iget-object v2, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->r:LK2/C;

    iget-object v5, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->h:Lj0/n;

    iget v5, v5, Lj0/n;->i:I

    iget-object v2, v2, LK2/C;->d:Landroid/util/SparseArray;

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LK2/A;

    if-eqz v2, :cond_4

    iget-object v2, v2, LK2/A;->d:Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;

    goto :goto_3

    :cond_4
    move-object v2, v3

    :goto_3
    if-eqz v2, :cond_6

    iget-object v2, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->r:LK2/C;

    iget-object v1, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->h:Lj0/n;

    iget v1, v1, Lj0/n;->i:I

    iget-object v2, v2, LK2/C;->d:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LK2/A;

    if-eqz v1, :cond_5

    iget-object v3, v1, LK2/A;->d:Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;

    :cond_5
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    goto :goto_4

    :cond_6
    move v1, v4

    :goto_4
    invoke-virtual {v0, v4, v1}, Landroid/graphics/Rect;->offset(II)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v8}, Lkotlin/collections/o;->d(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v3}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getClipChildren()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_9
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    goto :goto_7

    :cond_a
    new-instance v1, Lb2/f;

    invoke-direct {v1, v4, v2}, Lb2/f;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v1}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->addEndListener(Ljava/util/function/Consumer;)V

    iget-object v2, p0, Lb2/h;->b:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    sget-object v3, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_TRANSLATE_X:Landroid/util/FloatProperty;

    iget-object v7, p0, Lb2/h;->e:Landroid/graphics/Rect;

    iget v1, v7, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v4

    int-to-float v4, v1

    const/4 v8, 0x0

    sget-object v9, Ly0/e;->a:Landroid/view/animation/Interpolator;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v6, v9

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/anim/PendingAnimation;->addFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FFLandroid/animation/TimeInterpolator;)V

    iget-object v2, p0, Lb2/h;->b:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    sget-object v3, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_TRANSLATE_Y:Landroid/util/FloatProperty;

    iget p0, v7, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p0, v0

    int-to-float v4, p0

    move v5, v8

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/anim/PendingAnimation;->addFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FFLandroid/animation/TimeInterpolator;)V

    :cond_b
    sget-object p0, Lb2/g;->a:Lb2/g;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->addEndListener(Ljava/util/function/Consumer;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
