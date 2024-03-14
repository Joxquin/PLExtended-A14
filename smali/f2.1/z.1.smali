.class public final Lf2/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/M;


# static fields
.field public static final a:Lf2/z;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lf2/z;

    invoke-direct {v0}, Lf2/z;-><init>()V

    sput-object v0, Lf2/z;->a:Lf2/z;

    return-void
.end method


# virtual methods
.method public final isInRange(I)Z
    .locals 0

    invoke-static {p1}, Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/GetSuggestionsResponse$Version;->a(I)Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/GetSuggestionsResponse$Version;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
