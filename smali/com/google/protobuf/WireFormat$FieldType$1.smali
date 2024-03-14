.class final enum Lcom/google/protobuf/WireFormat$FieldType$1;
.super Lcom/google/protobuf/WireFormat$FieldType;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 4

    sget-object v0, Lcom/google/protobuf/WireFormat$JavaType;->i:Lcom/google/protobuf/WireFormat$JavaType;

    const/4 v1, 0x2

    const-string v2, "STRING"

    const/16 v3, 0x8

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/google/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/google/protobuf/WireFormat$JavaType;I)V

    return-void
.end method
