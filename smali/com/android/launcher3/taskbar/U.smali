.class public final synthetic Lcom/android/launcher3/taskbar/U;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/android/launcher3/taskbar/TaskbarControllers;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/TaskbarControllers;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/U;->d:Lcom/android/launcher3/taskbar/TaskbarControllers;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/U;->d:Lcom/android/launcher3/taskbar/TaskbarControllers;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarControllers;->a(Lcom/android/launcher3/taskbar/TaskbarControllers;)V

    return-void
.end method
