.class final synthetic Lcom/android/launcher3/taskbar/TaskbarEduTooltip$handleClose$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic $tmp0:Lcom/android/launcher3/taskbar/TaskbarEduTooltip;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarEduTooltip;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarEduTooltip$handleClose$1;->$tmp0:Lcom/android/launcher3/taskbar/TaskbarEduTooltip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarEduTooltip$handleClose$1;->$tmp0:Lcom/android/launcher3/taskbar/TaskbarEduTooltip;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarEduTooltip;->access$closeComplete(Lcom/android/launcher3/taskbar/TaskbarEduTooltip;)V

    return-void
.end method
