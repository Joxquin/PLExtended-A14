.class public abstract LO2/b;
.super LO2/a;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, LO2/a;-><init>()V

    iput-object p1, p0, LO2/b;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LO2/b;->a:Ljava/lang/String;

    return-object p0
.end method
