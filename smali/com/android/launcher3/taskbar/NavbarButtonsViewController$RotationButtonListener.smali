.class final Lcom/android/launcher3/taskbar/NavbarButtonsViewController$RotationButtonListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/systemui/shared/rotation/RotationButton$RotationButtonUpdatesCallback;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$RotationButtonListener;->this$0:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onVisibilityChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$RotationButtonListener;->this$0:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->g(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;)Lcom/android/systemui/shared/rotation/FloatingRotationButton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->getCurrentView()Landroid/view/View;

    move-result-object p1

    invoke-static {p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->h(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->h(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->setEmpty()V

    :goto_0
    return-void
.end method
