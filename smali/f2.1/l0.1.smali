.class public final Lf2/l0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/protobuf/i0;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    sget-object v0, Lcom/google/protobuf/WireFormat$FieldType;->l:Lcom/google/protobuf/WireFormat$FieldType;

    new-instance v1, Lcom/google/protobuf/i0;

    const-string v2, ""

    invoke-direct {v1, v0, v2, v0, v2}, Lcom/google/protobuf/i0;-><init>(Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    sput-object v1, Lf2/l0;->a:Lcom/google/protobuf/i0;

    return-void
.end method
