.class public final LO2/c;
.super LO2/b;
.source "SourceFile"


# static fields
.field public static final synthetic b:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, LO2/c;

    invoke-direct {v0}, LO2/c;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "CharMatcher.none()"

    invoke-direct {p0, v0}, LO2/b;-><init>(Ljava/lang/String;)V

    return-void
.end method
