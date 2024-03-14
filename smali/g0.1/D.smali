.class public final Lg0/D;
.super Lg0/y;
.source "SourceFile"


# instance fields
.field public final synthetic d:I

.field public final e:Lg0/E;


# direct methods
.method public constructor <init>(Lg0/E;I)V
    .locals 1

    iput p2, p0, Lg0/D;->d:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    iput-object p1, p0, Lg0/D;->e:Lg0/E;

    invoke-direct {p0}, Lg0/y;-><init>()V

    return-void

    :cond_0
    invoke-direct {p0}, Lg0/y;-><init>()V

    iput-object p1, p0, Lg0/D;->e:Lg0/E;

    return-void
.end method


# virtual methods
.method public final a(Lg0/x;)V
    .locals 0

    iget p1, p0, Lg0/D;->d:I

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p0, p0, Lg0/D;->e:Lg0/E;

    iget-boolean p1, p0, Lg0/E;->E:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lg0/x;->J()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lg0/E;->E:Z

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final f(Lg0/x;)V
    .locals 1

    iget v0, p0, Lg0/D;->d:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p0, p0, Lg0/D;->e:Lg0/E;

    iget-object v0, p0, Lg0/E;->B:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lg0/E;->t()Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lg0/w;->c:Lg0/v;

    invoke-virtual {p0, p1}, Lg0/x;->x(Lg0/v;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lg0/x;->t:Z

    sget-object p1, Lg0/w;->b:Lg0/v;

    invoke-virtual {p0, p1}, Lg0/x;->x(Lg0/v;)V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final g(Lg0/x;)V
    .locals 2

    iget v0, p0, Lg0/D;->d:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object v0, p0, Lg0/D;->e:Lg0/E;

    iget v1, v0, Lg0/E;->D:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lg0/E;->D:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lg0/E;->E:Z

    invoke-virtual {v0}, Lg0/x;->n()V

    :cond_0
    invoke-virtual {p1, p0}, Lg0/x;->z(Lg0/u;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
