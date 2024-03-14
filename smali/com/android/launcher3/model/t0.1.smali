.class public final synthetic Lcom/android/launcher3/model/t0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lcom/android/launcher3/model/ModelWriter;

.field public final synthetic f:Lcom/android/launcher3/model/ModelWriter$ModelVerifier;

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/ModelWriter;Ljava/lang/Object;Lcom/android/launcher3/model/ModelWriter$ModelVerifier;I)V
    .locals 0

    iput p4, p0, Lcom/android/launcher3/model/t0;->d:I

    iput-object p1, p0, Lcom/android/launcher3/model/t0;->e:Lcom/android/launcher3/model/ModelWriter;

    iput-object p2, p0, Lcom/android/launcher3/model/t0;->g:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher3/model/t0;->f:Lcom/android/launcher3/model/ModelWriter$ModelVerifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/android/launcher3/model/t0;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/launcher3/model/t0;->e:Lcom/android/launcher3/model/ModelWriter;

    iget-object v1, p0, Lcom/android/launcher3/model/t0;->g:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/model/data/FolderInfo;

    iget-object p0, p0, Lcom/android/launcher3/model/t0;->f:Lcom/android/launcher3/model/ModelWriter$ModelVerifier;

    invoke-static {v0, v1, p0}, Lcom/android/launcher3/model/ModelWriter;->b(Lcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/model/ModelWriter$ModelVerifier;)V

    return-void

    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/model/t0;->e:Lcom/android/launcher3/model/ModelWriter;

    iget-object v1, p0, Lcom/android/launcher3/model/t0;->g:Ljava/lang/Object;

    check-cast v1, Ljava/util/Collection;

    iget-object p0, p0, Lcom/android/launcher3/model/t0;->f:Lcom/android/launcher3/model/ModelWriter$ModelVerifier;

    invoke-static {v0, v1, p0}, Lcom/android/launcher3/model/ModelWriter;->d(Lcom/android/launcher3/model/ModelWriter;Ljava/util/Collection;Lcom/android/launcher3/model/ModelWriter$ModelVerifier;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
