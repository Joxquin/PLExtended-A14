.class public final synthetic Lcom/android/launcher3/model/A0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/android/launcher3/model/ModelWriter$ModelVerifier;

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/ModelWriter$ModelVerifier;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/A0;->d:Lcom/android/launcher3/model/ModelWriter$ModelVerifier;

    iput p2, p0, Lcom/android/launcher3/model/A0;->e:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/model/A0;->d:Lcom/android/launcher3/model/ModelWriter$ModelVerifier;

    iget p0, p0, Lcom/android/launcher3/model/A0;->e:I

    iget-object v1, v0, Lcom/android/launcher3/model/ModelWriter$ModelVerifier;->this$0:Lcom/android/launcher3/model/ModelWriter;

    invoke-static {v1}, Lcom/android/launcher3/model/ModelWriter;->h(Lcom/android/launcher3/model/ModelWriter;)Lcom/android/launcher3/model/BgDataModel;

    move-result-object v2

    iget v2, v2, Lcom/android/launcher3/model/BgDataModel;->lastBindId:I

    if-le v2, p0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, v0, Lcom/android/launcher3/model/ModelWriter$ModelVerifier;->startId:I

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lcom/android/launcher3/model/ModelWriter;->j(Lcom/android/launcher3/model/ModelWriter;)Lcom/android/launcher3/LauncherModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->rebindCallbacks()V

    :goto_0
    return-void
.end method
