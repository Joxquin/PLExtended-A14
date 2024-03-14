.class public final synthetic LR0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lcom/android/launcher3/pm/UserCache;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/pm/UserCache;I)V
    .locals 0

    iput p2, p0, LR0/e;->d:I

    iput-object p1, p0, LR0/e;->e:Lcom/android/launcher3/pm/UserCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, LR0/e;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, LR0/e;->e:Lcom/android/launcher3/pm/UserCache;

    invoke-static {p0}, Lcom/android/launcher3/pm/UserCache;->d(Lcom/android/launcher3/pm/UserCache;)V

    return-void

    :pswitch_1
    iget-object p0, p0, LR0/e;->e:Lcom/android/launcher3/pm/UserCache;

    invoke-static {p0}, Lcom/android/launcher3/pm/UserCache;->b(Lcom/android/launcher3/pm/UserCache;)V

    return-void

    :goto_0
    iget-object p0, p0, LR0/e;->e:Lcom/android/launcher3/pm/UserCache;

    invoke-static {p0}, Lcom/android/launcher3/pm/UserCache;->a(Lcom/android/launcher3/pm/UserCache;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
