.class final Lcom/android/systemui/monet/ColorScheme$Companion$humanReadable$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lm3/l;


# static fields
.field public static final d:Lcom/android/systemui/monet/ColorScheme$Companion$humanReadable$2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/monet/ColorScheme$Companion$humanReadable$2;

    invoke-direct {v0}, Lcom/android/systemui/monet/ColorScheme$Companion$humanReadable$2;-><init>()V

    sput-object v0, Lcom/android/systemui/monet/ColorScheme$Companion$humanReadable$2;->d:Lcom/android/systemui/monet/ColorScheme$Companion$humanReadable$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
