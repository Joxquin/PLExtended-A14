.class final synthetic Lcom/android/launcher3/DropTargetHandler$onDeleteComplete$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic $tmp0:Ljava/lang/Object;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/DropTargetHandler$onDeleteComplete$2;->d:I

    iput-object p2, p0, Lcom/android/launcher3/DropTargetHandler$onDeleteComplete$2;->$tmp0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/launcher3/DropTargetHandler$onDeleteComplete$2;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/android/launcher3/DropTargetHandler$onDeleteComplete$2;->$tmp0:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/model/ModelWriter;

    invoke-virtual {p0}, Lcom/android/launcher3/model/ModelWriter;->commitDelete()V

    return-void

    :goto_0
    iget-object p0, p0, Lcom/android/launcher3/DropTargetHandler$onDeleteComplete$2;->$tmp0:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;

    invoke-virtual {p0}, Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;->onLauncherResume()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
