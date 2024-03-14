.class public final synthetic Lcom/android/quickstep/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ljava/util/function/Consumer;

.field public final synthetic f:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(ILjava/util/function/Consumer;Ljava/util/ArrayList;)V
    .locals 0

    iput p1, p0, Lcom/android/quickstep/m0;->d:I

    iput-object p2, p0, Lcom/android/quickstep/m0;->e:Ljava/util/function/Consumer;

    iput-object p3, p0, Lcom/android/quickstep/m0;->f:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/quickstep/m0;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/quickstep/m0;->e:Ljava/util/function/Consumer;

    iget-object p0, p0, Lcom/android/quickstep/m0;->f:Ljava/util/ArrayList;

    invoke-static {v0, p0}, Lcom/android/quickstep/RecentTasksList;->d(Ljava/util/function/Consumer;Ljava/util/ArrayList;)V

    return-void

    :goto_0
    iget-object v0, p0, Lcom/android/quickstep/m0;->e:Ljava/util/function/Consumer;

    iget-object p0, p0, Lcom/android/quickstep/m0;->f:Ljava/util/ArrayList;

    invoke-static {v0, p0}, Lcom/android/quickstep/RecentTasksList;->b(Ljava/util/function/Consumer;Ljava/util/ArrayList;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
