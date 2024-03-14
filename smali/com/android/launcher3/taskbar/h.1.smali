.class public final synthetic Lcom/android/launcher3/taskbar/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;

.field public final synthetic c:Lcom/android/systemui/shared/recents/model/Task;

.field public final synthetic d:Lcom/android/systemui/shared/recents/model/Task;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;I)V
    .locals 0

    iput p4, p0, Lcom/android/launcher3/taskbar/h;->a:I

    iput-object p1, p0, Lcom/android/launcher3/taskbar/h;->b:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/h;->c:Lcom/android/systemui/shared/recents/model/Task;

    iput-object p3, p0, Lcom/android/launcher3/taskbar/h;->d:Lcom/android/systemui/shared/recents/model/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/android/launcher3/taskbar/h;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/launcher3/taskbar/h;->b:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/h;->c:Lcom/android/systemui/shared/recents/model/Task;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/h;->d:Lcom/android/systemui/shared/recents/model/Task;

    check-cast p1, Lcom/android/systemui/shared/recents/model/Task;

    invoke-static {v0, v1, p0}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;->r(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;)V

    return-void

    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/taskbar/h;->b:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/h;->c:Lcom/android/systemui/shared/recents/model/Task;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/h;->d:Lcom/android/systemui/shared/recents/model/Task;

    check-cast p1, Lcom/android/systemui/shared/recents/model/Task;

    invoke-static {v0, v1, p0}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;->t(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
