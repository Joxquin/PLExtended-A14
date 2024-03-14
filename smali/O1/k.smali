.class public final LO1/k;
.super Lcom/android/launcher3/AbstractFloatingView;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/Insettable;


# instance fields
.field public final synthetic d:LO1/l;


# direct methods
.method public constructor <init>(LO1/l;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, LO1/k;->d:LO1/l;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/android/launcher3/AbstractFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static a(LO1/k;)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, LO1/k;->d:LO1/l;

    iget-object v0, v0, LO1/l;->n:Lcom/android/launcher3/Launcher;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public getOptionsPopup()Lcom/google/android/apps/nexuslauncher/customize/OptionsPopupDialog$PopupView;
    .locals 0

    iget-object p0, p0, LO1/k;->d:LO1/l;

    iget-object p0, p0, LO1/l;->i:Lcom/google/android/apps/nexuslauncher/customize/OptionsPopupDialog$PopupView;

    return-object p0
.end method

.method public final handleClose(Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    iget-object v0, p0, LO1/k;->d:LO1/l;

    iget-object v0, v0, LO1/l;->n:Lcom/android/launcher3/Launcher;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, LO1/k;->d:LO1/l;

    invoke-virtual {v0}, LO1/l;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, LO1/k;->d:LO1/l;

    iget-object p0, p0, LO1/l;->i:Lcom/google/android/apps/nexuslauncher/customize/OptionsPopupDialog$PopupView;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    :cond_0
    return-void
.end method

.method public final isOfType(I)Z
    .locals 0

    and-int/lit16 p0, p1, 0x4000

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    return p1
.end method

.method public final setInsets(Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method
