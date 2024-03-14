.class public final synthetic Lcom/android/launcher3/taskbar/K;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/K;->a:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    iput p2, p0, Lcom/android/launcher3/taskbar/K;->b:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/K;->a:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    iget p0, p0, Lcom/android/launcher3/taskbar/K;->b:I

    check-cast p1, Lcom/android/launcher3/taskbar/bubbles/BubbleControllers;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->c(Lcom/android/launcher3/taskbar/TaskbarActivityContext;ILcom/android/launcher3/taskbar/bubbles/BubbleControllers;)V

    return-void
.end method
