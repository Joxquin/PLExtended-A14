.class public final Landroidx/lifecycle/DefaultLifecycleObserverAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/o;


# instance fields
.field public final d:Landroidx/lifecycle/e;

.field public final e:Landroidx/lifecycle/o;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/e;Landroidx/lifecycle/o;)V
    .locals 1

    const-string v0, "defaultLifecycleObserver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/DefaultLifecycleObserverAdapter;->d:Landroidx/lifecycle/e;

    iput-object p2, p0, Landroidx/lifecycle/DefaultLifecycleObserverAdapter;->e:Landroidx/lifecycle/o;

    return-void
.end method


# virtual methods
.method public final b(Landroidx/lifecycle/q;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 2

    sget-object v0, Landroidx/lifecycle/f;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    iget-object v1, p0, Landroidx/lifecycle/DefaultLifecycleObserverAdapter;->d:Landroidx/lifecycle/e;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ON_ANY must not been send by anybody"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :pswitch_2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :pswitch_3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :pswitch_4
    invoke-interface {v1, p1}, Landroidx/lifecycle/e;->a(Landroidx/lifecycle/q;)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :pswitch_6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    iget-object p0, p0, Landroidx/lifecycle/DefaultLifecycleObserverAdapter;->e:Landroidx/lifecycle/o;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Landroidx/lifecycle/o;->b(Landroidx/lifecycle/q;Landroidx/lifecycle/Lifecycle$Event;)V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
