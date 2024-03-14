.class public final LX2/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public b:LX2/c;

.field public c:LX2/g;

.field public d:I

.field public e:Z


# direct methods
.method public constructor <init>(LX2/c;LX2/g;IZ)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LX2/q;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "transportAttrs"

    invoke-static {p1, v0}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, LX2/q;->b:LX2/c;

    const-string p1, "callOptions"

    invoke-static {p2, p1}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, p0, LX2/q;->c:LX2/g;

    iput p3, p0, LX2/q;->d:I

    iput-boolean p4, p0, LX2/q;->e:Z

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, LX2/q;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p0}, LO2/j;->b(Ljava/lang/Object;)LO2/i;

    move-result-object v0

    const-string v1, "transportAttrs"

    iget-object v2, p0, LX2/q;->b:LX2/c;

    invoke-virtual {v0, v2, v1}, LO2/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "callOptions"

    iget-object v2, p0, LX2/q;->c:LX2/g;

    invoke-virtual {v0, v2, v1}, LO2/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget v1, p0, LX2/q;->d:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "previousAttempts"

    invoke-virtual {v0, v1, v2}, LO2/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "isTransparentRetry"

    iget-boolean p0, p0, LX2/q;->e:Z

    invoke-virtual {v0, v1, p0}, LO2/i;->c(Ljava/lang/String;Z)V

    invoke-virtual {v0}, LO2/i;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
