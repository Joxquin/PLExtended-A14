.class public final synthetic Lcom/android/launcher3/model/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/LauncherModel$CallbackTask;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher3/model/StringCache;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/StringCache;I)V
    .locals 0

    iput p2, p0, Lcom/android/launcher3/model/m;->a:I

    iput-object p1, p0, Lcom/android/launcher3/model/m;->b:Lcom/android/launcher3/model/StringCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 1

    iget v0, p0, Lcom/android/launcher3/model/m;->a:I

    iget-object p0, p0, Lcom/android/launcher3/model/m;->b:Lcom/android/launcher3/model/StringCache;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-interface {p1, p0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindStringCache(Lcom/android/launcher3/model/StringCache;)V

    return-void

    :goto_0
    invoke-interface {p1, p0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindStringCache(Lcom/android/launcher3/model/StringCache;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
