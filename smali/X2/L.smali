.class public final LX2/L;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lio/grpc/InternalChannelz$ChannelTrace$Event$Severity;

.field public final c:J

.field public final d:LX2/P;

.field public final e:LX2/P;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lio/grpc/InternalChannelz$ChannelTrace$Event$Severity;JLX2/P;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LX2/L;->a:Ljava/lang/String;

    const-string p1, "severity"

    invoke-static {p2, p1}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, p0, LX2/L;->b:Lio/grpc/InternalChannelz$ChannelTrace$Event$Severity;

    iput-wide p3, p0, LX2/L;->c:J

    const/4 p1, 0x0

    iput-object p1, p0, LX2/L;->d:LX2/P;

    iput-object p5, p0, LX2/L;->e:LX2/P;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    instance-of v0, p1, LX2/L;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, LX2/L;

    iget-object v0, p1, LX2/L;->a:Ljava/lang/String;

    iget-object v2, p0, LX2/L;->a:Ljava/lang/String;

    invoke-static {v2, v0}, LO2/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LX2/L;->b:Lio/grpc/InternalChannelz$ChannelTrace$Event$Severity;

    iget-object v2, p1, LX2/L;->b:Lio/grpc/InternalChannelz$ChannelTrace$Event$Severity;

    invoke-static {v0, v2}, LO2/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v2, p0, LX2/L;->c:J

    iget-wide v4, p1, LX2/L;->c:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-object v0, p0, LX2/L;->d:LX2/P;

    iget-object v2, p1, LX2/L;->d:LX2/P;

    invoke-static {v0, v2}, LO2/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, LX2/L;->e:LX2/P;

    iget-object p1, p1, LX2/L;->e:LX2/P;

    invoke-static {p0, p1}, LO2/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 4

    iget-wide v0, p0, LX2/L;->c:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, LX2/L;->d:LX2/P;

    iget-object v2, p0, LX2/L;->e:LX2/P;

    iget-object v3, p0, LX2/L;->a:Ljava/lang/String;

    iget-object p0, p0, LX2/L;->b:Lio/grpc/InternalChannelz$ChannelTrace$Event$Severity;

    filled-new-array {v3, p0, v0, v1, v2}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    invoke-static {p0}, LO2/j;->b(Ljava/lang/Object;)LO2/i;

    move-result-object v0

    const-string v1, "description"

    iget-object v2, p0, LX2/L;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, LO2/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "severity"

    iget-object v2, p0, LX2/L;->b:Lio/grpc/InternalChannelz$ChannelTrace$Event$Severity;

    invoke-virtual {v0, v2, v1}, LO2/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "timestampNanos"

    iget-wide v2, p0, LX2/L;->c:J

    invoke-virtual {v0, v1, v2, v3}, LO2/i;->b(Ljava/lang/String;J)V

    const-string v1, "channelRef"

    iget-object v2, p0, LX2/L;->d:LX2/P;

    invoke-virtual {v0, v2, v1}, LO2/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "subchannelRef"

    iget-object p0, p0, LX2/L;->e:LX2/P;

    invoke-virtual {v0, p0, v1}, LO2/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, LO2/i;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
