.class public final Lf2/y;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/protobuf/i0;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    sget-object v0, Lcom/google/protobuf/WireFormat$FieldType;->h:Lcom/google/protobuf/WireFormat$FieldType;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/google/protobuf/WireFormat$FieldType;->k:Lcom/google/protobuf/WireFormat$FieldType;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance v4, Lcom/google/protobuf/i0;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/google/protobuf/i0;-><init>(Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    sput-object v4, Lf2/y;->a:Lcom/google/protobuf/i0;

    return-void
.end method
