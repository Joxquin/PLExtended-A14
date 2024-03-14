.class public final synthetic Lcom/android/launcher3/taskbar/I0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntPredicate;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/taskbar/TaskbarStashController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/TaskbarStashController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/I0;->a:Lcom/android/launcher3/taskbar/TaskbarStashController;

    return-void
.end method


# virtual methods
.method public final test(I)Z
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/I0;->a:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->h(Lcom/android/launcher3/taskbar/TaskbarStashController;I)Z

    move-result p0

    return p0
.end method
