.class public final synthetic Lcom/android/launcher3/S0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lcom/android/launcher3/util/RunnableList;

.field public final synthetic f:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/util/RunnableList;Lcom/android/launcher3/W0;I)V
    .locals 0

    iput p3, p0, Lcom/android/launcher3/S0;->d:I

    iput-object p1, p0, Lcom/android/launcher3/S0;->e:Lcom/android/launcher3/util/RunnableList;

    iput-object p2, p0, Lcom/android/launcher3/S0;->f:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/android/launcher3/S0;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/launcher3/S0;->e:Lcom/android/launcher3/util/RunnableList;

    iget-object p0, p0, Lcom/android/launcher3/S0;->f:Ljava/lang/Runnable;

    sget v1, Lcom/android/launcher3/Workspace;->d:I

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    return-void

    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/S0;->e:Lcom/android/launcher3/util/RunnableList;

    iget-object p0, p0, Lcom/android/launcher3/S0;->f:Ljava/lang/Runnable;

    sget v1, Lcom/android/launcher3/Workspace;->d:I

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
