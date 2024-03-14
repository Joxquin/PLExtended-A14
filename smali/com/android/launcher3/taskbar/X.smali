.class public final synthetic Lcom/android/launcher3/taskbar/X;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/taskbar/TaskbarDragController$TaskbarReturnPropertiesListener;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/dragndrop/DragView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/dragndrop/DragView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/X;->a:Lcom/android/launcher3/dragndrop/DragView;

    return-void
.end method


# virtual methods
.method public final updateDragShadow(FFFF)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/X;->a:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->setScaleX(F)V

    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->setScaleY(F)V

    invoke-virtual {p0, p4}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method
