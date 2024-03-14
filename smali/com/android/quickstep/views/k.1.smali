.class public final synthetic Lcom/android/quickstep/views/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/quickstep/views/k;->a:I

    iput-object p2, p0, Lcom/android/quickstep/views/k;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/quickstep/views/k;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/android/quickstep/views/k;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/views/GroupedTaskView;

    check-cast p1, Lcom/android/systemui/shared/recents/model/Task;

    invoke-static {p0, p1}, Lcom/android/quickstep/views/GroupedTaskView;->R(Lcom/android/quickstep/views/GroupedTaskView;Lcom/android/systemui/shared/recents/model/Task;)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/android/quickstep/views/k;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/views/GroupedTaskView;

    check-cast p1, Lcom/android/systemui/shared/recents/model/ThumbnailData;

    invoke-static {p0, p1}, Lcom/android/quickstep/views/GroupedTaskView;->S(Lcom/android/quickstep/views/GroupedTaskView;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V

    return-void

    :goto_0
    iget-object p0, p0, Lcom/android/quickstep/views/k;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/util/RunnableList;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/android/quickstep/views/GroupedTaskView;->Q(Lcom/android/launcher3/util/RunnableList;Ljava/lang/Boolean;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
