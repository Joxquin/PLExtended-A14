.class public abstract Lcom/google/protobuf/c0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/protobuf/a0;

.field public static final b:Lcom/google/protobuf/b0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/protobuf/a0;

    invoke-direct {v0}, Lcom/google/protobuf/a0;-><init>()V

    sput-object v0, Lcom/google/protobuf/c0;->a:Lcom/google/protobuf/a0;

    new-instance v0, Lcom/google/protobuf/b0;

    invoke-direct {v0}, Lcom/google/protobuf/b0;-><init>()V

    sput-object v0, Lcom/google/protobuf/c0;->b:Lcom/google/protobuf/b0;

    return-void
.end method


# virtual methods
.method public abstract a(JLjava/lang/Object;)V
.end method

.method public abstract b(JLjava/lang/Object;Ljava/lang/Object;)V
.end method

.method public abstract c(JLjava/lang/Object;)Ljava/util/List;
.end method
