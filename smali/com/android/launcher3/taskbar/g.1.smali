.class public final synthetic Lcom/android/launcher3/taskbar/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/quickstep/util/BorderAnimator$BorderBoundsBuilder;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/g;->a:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;

    return-void
.end method


# virtual methods
.method public final updateBorderBounds(Landroid/graphics/Rect;)V
    .locals 2

    sget v0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;->d:I

    iget-object p0, p0, Lcom/android/launcher3/taskbar/g;->a:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v0, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method
