.class public final synthetic Lcom/android/launcher3/taskbar/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/j;->d:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/j;->d:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;

    invoke-virtual {p0}, Landroid/view/View;->invalidateOutline()V

    return-void
.end method
