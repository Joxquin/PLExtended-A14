.class public final synthetic Lcom/android/launcher3/taskbar/E0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/taskbar/TaskbarStashController;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/TaskbarStashController;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/E0;->a:Lcom/android/launcher3/taskbar/TaskbarStashController;

    iput-boolean p2, p0, Lcom/android/launcher3/taskbar/E0;->b:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/E0;->a:Lcom/android/launcher3/taskbar/TaskbarStashController;

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/E0;->b:Z

    check-cast p1, Lcom/android/launcher3/taskbar/bubbles/BubbleControllers;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->a(Lcom/android/launcher3/taskbar/TaskbarStashController;ZLcom/android/launcher3/taskbar/bubbles/BubbleControllers;)V

    return-void
.end method
