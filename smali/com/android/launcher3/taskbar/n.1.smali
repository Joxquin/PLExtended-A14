.class public final synthetic Lcom/android/launcher3/taskbar/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;

.field public final synthetic e:Lcom/android/quickstep/util/GroupTask;

.field public final synthetic f:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;Lcom/android/quickstep/util/GroupTask;Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/n;->d:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/n;->e:Lcom/android/quickstep/util/GroupTask;

    iput-object p3, p0, Lcom/android/launcher3/taskbar/n;->f:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/n;->d:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/n;->e:Lcom/android/quickstep/util/GroupTask;

    invoke-static {v0, p0}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->b(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;Lcom/android/quickstep/util/GroupTask;)V

    return-void
.end method
