.class public abstract Lcom/google/protobuf/E;
.super Lcom/google/protobuf/a;
.source "SourceFile"


# instance fields
.field private final defaultInstance:Lcom/google/protobuf/J;

.field protected instance:Lcom/google/protobuf/J;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/J;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/a;-><init>()V

    iput-object p1, p0, Lcom/google/protobuf/E;->defaultInstance:Lcom/google/protobuf/J;

    invoke-virtual {p1}, Lcom/google/protobuf/J;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->g:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/J;->dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/J;

    iput-object p1, p0, Lcom/google/protobuf/E;->instance:Lcom/google/protobuf/J;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Default instance must be immutable."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static mergeFromInstance(Lcom/google/protobuf/J;Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Lcom/google/protobuf/z0;->c:Lcom/google/protobuf/z0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/z0;->a(Ljava/lang/Class;)Lcom/google/protobuf/C0;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/C0;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final build()Lcom/google/protobuf/J;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/E;->buildPartial()Lcom/google/protobuf/J;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/protobuf/J;->isInitialized(Lcom/google/protobuf/J;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lcom/google/protobuf/UninitializedMessageException;

    invoke-direct {p0}, Lcom/google/protobuf/UninitializedMessageException;-><init>()V

    throw p0
.end method

.method public final buildPartial()Lcom/google/protobuf/J;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/E;->instance:Lcom/google/protobuf/J;

    invoke-virtual {v0}, Lcom/google/protobuf/J;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/google/protobuf/E;->instance:Lcom/google/protobuf/J;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/E;->instance:Lcom/google/protobuf/J;

    invoke-virtual {v0}, Lcom/google/protobuf/J;->makeImmutable()V

    iget-object p0, p0, Lcom/google/protobuf/E;->instance:Lcom/google/protobuf/J;

    return-object p0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/E;->defaultInstance:Lcom/google/protobuf/J;

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->h:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/J;->dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/E;

    invoke-virtual {p0}, Lcom/google/protobuf/E;->buildPartial()Lcom/google/protobuf/J;

    move-result-object p0

    iput-object p0, v0, Lcom/google/protobuf/E;->instance:Lcom/google/protobuf/J;

    return-object v0
.end method

.method public final copyOnWrite()V
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/E;->instance:Lcom/google/protobuf/J;

    invoke-virtual {v0}, Lcom/google/protobuf/J;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/E;->defaultInstance:Lcom/google/protobuf/J;

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->g:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/J;->dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/J;

    iget-object v1, p0, Lcom/google/protobuf/E;->instance:Lcom/google/protobuf/J;

    invoke-static {v0, v1}, Lcom/google/protobuf/E;->mergeFromInstance(Lcom/google/protobuf/J;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/protobuf/E;->instance:Lcom/google/protobuf/J;

    :cond_0
    return-void
.end method

.method public final getDefaultInstanceForType$1()Lcom/google/protobuf/J;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/E;->defaultInstance:Lcom/google/protobuf/J;

    return-object p0
.end method

.method public final isInitialized()Z
    .locals 1

    iget-object p0, p0, Lcom/google/protobuf/E;->instance:Lcom/google/protobuf/J;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/protobuf/J;->isInitialized(Lcom/google/protobuf/J;Z)Z

    move-result p0

    return p0
.end method

.method public final mergeFrom(Lcom/google/protobuf/J;)V
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/E;->defaultInstance:Lcom/google/protobuf/J;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/J;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/E;->copyOnWrite()V

    iget-object p0, p0, Lcom/google/protobuf/E;->instance:Lcom/google/protobuf/J;

    invoke-static {p0, p1}, Lcom/google/protobuf/E;->mergeFromInstance(Lcom/google/protobuf/J;Ljava/lang/Object;)V

    return-void
.end method
