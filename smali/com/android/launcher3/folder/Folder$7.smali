.class final Lcom/android/launcher3/folder/Folder$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/OnAlarmListener;


# instance fields
.field public final synthetic d:I

.field final synthetic this$0:Lcom/android/launcher3/folder/Folder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/folder/Folder;I)V
    .locals 0

    iput p2, p0, Lcom/android/launcher3/folder/Folder$7;->d:I

    iput-object p1, p0, Lcom/android/launcher3/folder/Folder$7;->this$0:Lcom/android/launcher3/folder/Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAlarm(Lcom/android/launcher3/Alarm;)V
    .locals 2

    iget p1, p0, Lcom/android/launcher3/folder/Folder$7;->d:I

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder$7;->this$0:Lcom/android/launcher3/folder/Folder;

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    iget v0, p0, Lcom/android/launcher3/folder/Folder;->mEmptyCellRank:I

    iget v1, p0, Lcom/android/launcher3/folder/Folder;->mTargetRank:I

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/folder/FolderPagedView;->realTimeReorder(II)V

    iget p1, p0, Lcom/android/launcher3/folder/Folder;->mTargetRank:I

    iput p1, p0, Lcom/android/launcher3/folder/Folder;->mEmptyCellRank:I

    return-void

    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->completeDragExit()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
