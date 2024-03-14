.class public final synthetic Lcom/android/launcher3/model/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/LauncherModel$CallbackTask;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;III)V
    .locals 0

    iput p4, p0, Lcom/android/launcher3/model/r;->a:I

    iput-object p1, p0, Lcom/android/launcher3/model/r;->b:Ljava/util/ArrayList;

    iput p2, p0, Lcom/android/launcher3/model/r;->c:I

    iput p3, p0, Lcom/android/launcher3/model/r;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 3

    iget v0, p0, Lcom/android/launcher3/model/r;->a:I

    iget-object v1, p0, Lcom/android/launcher3/model/r;->b:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/launcher3/model/r;->c:I

    iget p0, p0, Lcom/android/launcher3/model/r;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    add-int/2addr p0, v2

    invoke-virtual {v1, v2, p0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindItems(Ljava/util/List;)V

    return-void

    :goto_0
    add-int/2addr p0, v2

    invoke-virtual {v1, v2, p0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindItems(Ljava/util/List;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
