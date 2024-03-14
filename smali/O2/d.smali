.class public final LO2/d;
.super LO2/b;
.source "SourceFile"


# static fields
.field public static final b:LO2/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1f

    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    new-instance v0, LO2/d;

    invoke-direct {v0}, LO2/d;-><init>()V

    sput-object v0, LO2/d;->b:LO2/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "CharMatcher.whitespace()"

    invoke-direct {p0, v0}, LO2/b;-><init>(Ljava/lang/String;)V

    return-void
.end method
