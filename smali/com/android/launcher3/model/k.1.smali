.class public final synthetic Lcom/android/launcher3/model/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/LauncherModel$CallbackTask;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;I)V
    .locals 0

    iput p2, p0, Lcom/android/launcher3/model/k;->a:I

    iput-object p1, p0, Lcom/android/launcher3/model/k;->b:Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 1

    iget v0, p0, Lcom/android/launcher3/model/k;->a:I

    iget-object p0, p0, Lcom/android/launcher3/model/k;->b:Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {p0, p1}, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->a(Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void

    :goto_0
    invoke-static {p0, p1}, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->g(Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
