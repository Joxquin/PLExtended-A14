.class public final synthetic Lcom/android/launcher3/taskbar/C0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/android/launcher3/taskbar/TaskbarScrimViewController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/TaskbarScrimViewController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/C0;->d:Lcom/android/launcher3/taskbar/TaskbarScrimViewController;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/C0;->d:Lcom/android/launcher3/taskbar/TaskbarScrimViewController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarScrimViewController;->b(Lcom/android/launcher3/taskbar/TaskbarScrimViewController;)V

    return-void
.end method
