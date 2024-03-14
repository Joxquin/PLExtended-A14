.class public final synthetic Lcom/android/launcher3/taskbar/J0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/android/launcher3/taskbar/TaskbarStashController;

.field public final synthetic e:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/TaskbarStashController;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/J0;->d:Lcom/android/launcher3/taskbar/TaskbarStashController;

    iput p2, p0, Lcom/android/launcher3/taskbar/J0;->e:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/J0;->d:Lcom/android/launcher3/taskbar/TaskbarStashController;

    iget p0, p0, Lcom/android/launcher3/taskbar/J0;->e:F

    invoke-static {v0, p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->d(Lcom/android/launcher3/taskbar/TaskbarStashController;F)V

    return-void
.end method
