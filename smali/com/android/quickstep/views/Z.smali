.class public final synthetic Lcom/android/quickstep/views/Z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/quickstep/views/TaskView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/views/TaskView;I)V
    .locals 0

    iput p2, p0, Lcom/android/quickstep/views/Z;->a:I

    iput-object p1, p0, Lcom/android/quickstep/views/Z;->b:Lcom/android/quickstep/views/TaskView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/quickstep/views/Z;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/android/quickstep/views/Z;->b:Lcom/android/quickstep/views/TaskView;

    check-cast p1, Lcom/android/systemui/shared/recents/model/ThumbnailData;

    invoke-static {p0, p1}, Lcom/android/quickstep/views/TaskView;->d(Lcom/android/quickstep/views/TaskView;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V

    return-void

    :goto_0
    iget-object p0, p0, Lcom/android/quickstep/views/Z;->b:Lcom/android/quickstep/views/TaskView;

    check-cast p1, Lcom/android/systemui/shared/recents/model/Task;

    invoke-static {p0, p1}, Lcom/android/quickstep/views/TaskView;->h(Lcom/android/quickstep/views/TaskView;Lcom/android/systemui/shared/recents/model/Task;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
